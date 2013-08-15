class GitFile < ActiveRecord::Base
  validates :path, :git_repo_id, :code_element_id, presence: true

  belongs_to :git_repo
  belongs_to :code_element
end
