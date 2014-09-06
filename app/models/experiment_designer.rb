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

    puts "New factors is:\n #{new_factors.inspect}\n\n"
    factor = new_factors.shift
    puts "After POP new factors is:\n #{new_factors.inspect}\n\n"

    new_combinations = []

    unless combinations.empty?
      # add each level of this factor to the exiting combinations
      combinations.each do |combination|
        factor.levels.each do |level|
          new_combination = combination.clone
          new_combination.push(level)
          new_combinations.push(new_combination)
          # puts "New combinations (recursion!):\n#{new_combinations.inspect}\n\n\n"
        end
      end
    else
      # initialize combinations array if empty
      factor.levels.each do |level|
        new_combinations.push([level])
      end
      puts "New combinations (base_case):\n#{new_combinations.inspect}\n\n\n"
    end

    unless new_factors.empty?
      combinations = ExperimentDesigner.get_all_combinations(new_factors, new_combinations)
    else
      combinations = new_combinations
    end

    return combinations
  end
end
