class GitFilesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  respond_to :json

  def index
    respond_with GitFile.all
  end

  def create
    @git_file = GitFile.new(git_file_params)
    if @git_file.save
      respond_with @git_file
    else
      respond_with @git_file
    end
  end

  private

  def git_file_params
    params.require(:git_file).permit(:path, :git_repo_id, :code_element_id)
  end
end
