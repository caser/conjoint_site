class ResponseSet < ActiveRecord::Base
  belongs_to :survey
  belongs_to :respondent

  validates :data, presence: true

  serialize :data
end
