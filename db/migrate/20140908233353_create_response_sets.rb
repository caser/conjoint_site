class CreateResponseSets < ActiveRecord::Migration
  def change
    create_table :response_sets do |t|
      t.text :data

      t.timestamps
    end
  end
end
