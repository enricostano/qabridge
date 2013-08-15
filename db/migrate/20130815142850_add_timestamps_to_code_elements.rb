class AddTimestampsToCodeElements < ActiveRecord::Migration
  def change
    add_timestamps :code_elements
  end
end
