require 'octokit'

class GitReposController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @git_repos = GitRepo.all

    render json: @git_repos
  end

  def create
    @git_repo = GitRepo.new(git_repo_params)

    if @git_repo.save
      render json: @git_repo
    else
      render json: @git_repo
    end
  end

  def repo_tree
    tree = Octokit.tree(params[:github_repo], params[:branch], recursive: true)

    render json: tree
  end

  private

  def git_repo_params
    github_repo = Octokit.repo(params[:github_repo])

    return {
             name:      github_repo.full_name,
             https_url: github_repo.html_url,
             git_url:   github_repo.git_url
           }
  end
end
