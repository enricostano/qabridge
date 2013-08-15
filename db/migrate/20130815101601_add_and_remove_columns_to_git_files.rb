class AddAndRemoveColumnsToGitFiles < ActiveRecord::Migration
  def change
    remove_column :git_files, :filename
    remove_column :git_files, :filetype
    add_column    :git_files, :code_element_id, :integer
    change_column :git_files, :code_element_id, :integer, null: false
  end
end
