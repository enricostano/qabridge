class GitFile < ActiveRecord::Base
  FILETYPES = [ :app, :component, :unit_test, :acceptance_test ]

  validates :filename, :path, :git_repo_id, :filetype, presence: true
  validates :filetype, inclusion: {
    in: FILETYPES,
    message: "%{value} is not a valid file type"
  }

  belongs_to :git_repo
end
