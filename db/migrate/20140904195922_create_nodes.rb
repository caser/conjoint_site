class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.references :factorial_tree, index: true

      t.timestamps
    end
  end
end
