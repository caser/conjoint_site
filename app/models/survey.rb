class Survey < ActiveRecord::Base
  belongs_to :experiment
  has_many :response_sets
  
  validates :title, presence: true

  def design_matrix
    return experiment.design_matrix
  end

  def generate_choice_set(length = 3)
    experiment.generate_design_matrix
    choice_set = experiment.design_matrix.sample(length)
  end
end
