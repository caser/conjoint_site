class Experiment < ActiveRecord::Base
  has_many :factors
  has_many :surveys

  serialize :design_matrix

  validates :title, presence: true

  def generate_design_matrix
    self.design_matrix = ExperimentDesigner.build_factorial_design(self)
  end

  def design_matrix
    return self[:design_matrix]
  end

  alias :original_design_matrix :design_matrix

  def design_matrix
    self.original_design_matrix || self.generate_design_matrix
  end

  def design_matrix=(matrix)
    self[:design_matrix] = matrix
  end
end
