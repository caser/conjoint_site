class Experiment < ActiveRecord::Base
  has_many :factors
  has_many :surveys

  serialize :full_factorial_design

  validates :title, presence: true
end
