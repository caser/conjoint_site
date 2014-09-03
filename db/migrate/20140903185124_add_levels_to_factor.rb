class AddLevelsToFactor < ActiveRecord::Migration
  def change
    add_column :factors, :levels, :text
  end
end
