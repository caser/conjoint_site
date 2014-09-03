class AddExperimentIdToSurveys < ActiveRecord::Migration
  def change
    add_column :experiments, :experiment_id, :integer
  end
end
