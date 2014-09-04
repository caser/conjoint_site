class RemoveExperimentIdFromExperiments < ActiveRecord::Migration
  def change
    remove_column :experiments, :experiment_id, :string
  end
end
