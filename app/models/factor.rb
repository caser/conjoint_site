class Factor < ActiveRecord::Base
  belongs_to :experiment

  serialize :levels

  validates :title, :levels, presence: true
end
