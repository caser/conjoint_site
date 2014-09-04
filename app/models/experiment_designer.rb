class ExperimentDesigner < ActiveRecord::Base
  def self.build_factorial_design(experiment)
    factors = experiment.factors
  end
end
