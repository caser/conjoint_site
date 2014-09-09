class AddSurveysToResponseSets < ActiveRecord::Migration
  def change
    add_reference :response_sets, :survey, index: true
  end
end
