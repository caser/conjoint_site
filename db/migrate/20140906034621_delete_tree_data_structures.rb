class DeleteTreeDataStructures < ActiveRecord::Migration
  def change
    drop_table :nodes
    drop_table :factorial_trees
  end
end
