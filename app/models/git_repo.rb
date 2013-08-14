class GitRepo < ActiveRecord::Base
  validates :name, :https_url, :git_url, presence: true

  has_many :git_files
end
