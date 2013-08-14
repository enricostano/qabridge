class CreateGitFiles < ActiveRecord::Migration
  def change
    create_table :git_files do |t|
      t.string :filename, null: false
      t.string :path, null: false
      t.integer :repo_id, null: false
      t.string :filetype, null: false

      t.timestamps
    end
  end
end
