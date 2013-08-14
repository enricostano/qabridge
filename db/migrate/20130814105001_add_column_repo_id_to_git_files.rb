class AddColumnRepoIdToGitFiles < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up   { remove_column :git_files, :repo_id
                 add_column    :git_files, :git_repo_id, :integer
                 change_column :git_files, :git_repo_id, :integer, null: false }
      dir.down { remove_column :git_files, :git_repo_id
                 add_column    :git_files, :repo_id, :integer
                 change_column :git_files, :repo_id, :integer, null: false }
    end
  end
end
