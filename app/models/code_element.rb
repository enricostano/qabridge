class CodeElement < ActiveRecord::Base
  ELEMENT_TYPES = %w(app component unit_test acceptance_test)

  validates :name, :element_type, presence: true
  validates :element_type, inclusion: {
    in: ELEMENT_TYPES,
    message: "%{value} is not a valid code element type"
  }

  has_many :git_files
end
