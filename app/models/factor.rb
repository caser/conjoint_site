class Factor < ActiveRecord::Base
  belongs_to :experiment

  validates :title, presence: true
end
