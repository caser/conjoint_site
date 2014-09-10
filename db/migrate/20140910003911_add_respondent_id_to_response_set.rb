class AddRespondentIdToResponseSet < ActiveRecord::Migration
  def change
    add_reference :response_sets, :respondent, index: true
  end
end
