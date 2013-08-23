class GitFilesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @git_files = GitFile.all

    render json: @git_files
  end

  def create
    @git_file = GitFile.new(git_file_params)

    if @git_file.save
      render json: @git_files
    else
      render json: @git_files
    end
  end

  private

  def git_file_params
    params.require(:git_file).permit(:path, :git_repo_id, :code_element_id)
  end
end
