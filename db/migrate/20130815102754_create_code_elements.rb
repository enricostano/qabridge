class CreateCodeElements < ActiveRecord::Migration
  def change
    create_table :code_elements do |t|
      t.string :name, null: false
      t.string :element_type, null: false
    end
  end
end
