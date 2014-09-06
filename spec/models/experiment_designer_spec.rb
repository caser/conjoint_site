require 'spec_helper'

describe ExperimentDesigner do
  describe "##build_factorial_design" do
    it "should take an experiment and return a full factorial design" do
      experiment = build(:experiment)
      factor1 = build(:color_factor)
      factor2 = build(:credit_card_factor)
      factor3 = build(:job_title_factor)

      experiment.factors << [factor1, factor2, factor3]

      factorial_design = ExperimentDesigner.build_factorial_design(experiment)

      factor1.levels.each do |level1|
        factor2.levels.each do |level2|
          factor3.levels.each do |level3|
            sample_level = [level1, level2, level3]
            factorial_design.should include(sample_level)
          end
        end
      end
    end
  end
end