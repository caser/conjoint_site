class CreateFactorialTrees < ActiveRecord::Migration
  def change
    create_table :factorial_trees do |t|

      t.timestamps
    end
  end
end
