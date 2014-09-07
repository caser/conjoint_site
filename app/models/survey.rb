class Survey < ActiveRecord::Base
  belongs_to :experiment

  def design_matrix
    return experiment.design_matrix
  end

end
