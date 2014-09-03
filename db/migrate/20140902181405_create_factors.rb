class CreateFactors < ActiveRecord::Migration
  def change
    create_table :factors do |t|
      t.references :experiment, index: true

      t.timestamps
    end
  end
end
