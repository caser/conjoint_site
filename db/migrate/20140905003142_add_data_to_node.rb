class AddDataToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :data, :text
  end
end
