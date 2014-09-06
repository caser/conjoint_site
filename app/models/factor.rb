class Factor < ActiveRecord::Base

  belongs_to :experiment

  serialize :levels

  validates :title, :levels, presence: true

  def clone
    new_factor = Factor.new

    new_factor.title = Marshal.load(Marshal.dump(title))
    new_factor.levels = Marshal.load(Marshal.dump(levels))

    return new_factor
  end

end
