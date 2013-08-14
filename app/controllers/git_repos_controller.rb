require 'octokit'

class GitReposController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render text: "OK"
  end

  def create
    github_repo = Octokit.repo(params[:github_repo])
    @git_repo = GitRepo.new(name:      github_repo.full_name,
                            https_url: github_repo.html_url,
                            git_url:   github_repo.git_url)
    if @git_repo.save
      render json: github_repo
    else
      render text: "NOPE"
    end
  end
end
