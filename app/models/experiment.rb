class Experiment < ActiveRecord::Base
  has_many :factors
  has_many :surveys

  attr_accessor :name

  validates :name, presence: true
end
