class CreateExperimentDesigners < ActiveRecord::Migration
  def change
    create_table :experiment_designers do |t|

      t.timestamps
    end
  end
end
