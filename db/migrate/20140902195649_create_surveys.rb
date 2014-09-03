class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :experiment, index: true

      t.timestamps
    end
  end
end
