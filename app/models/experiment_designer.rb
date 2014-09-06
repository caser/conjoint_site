class ExperimentDesigner < ActiveRecord::Base
  def self.build_factorial_design(experiment)
    factors = experiment.factors
    number_of_factors = factors.length

    combinations = ExperimentDesigner.get_all_combinations(factors)

    return combinations
  end

  def self.get_all_combinations(factors, combinations = [])
    new_factors = []

    factors.each do |factor|
      new_factors.push(factor.clone)
    end

    factor = new_factors.shift

    new_combinations = []

    unless combinations.empty?
      combinations.each do |combination|
        factor.levels.each do |level|
          new_combination = combination.clone
          new_combination.push(level)
          new_combinations.push(new_combination)
        end
      end
    else
      factor.levels.each do |level|
        new_combinations.push([level])
      end
    end

    unless new_factors.empty?
      combinations = ExperimentDesigner.get_all_combinations(new_factors, new_combinations)
    else
      combinations = new_combinations
    end

    return combinations
  end
end
