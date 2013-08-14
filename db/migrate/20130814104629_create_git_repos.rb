class CreateGitRepos < ActiveRecord::Migration
  def change
    create_table :git_repos do |t|
      t.string :name, null: false
      t.string :https_url, null: false
      t.string :git_url, null: false

      t.timestamps
    end
  end
end
