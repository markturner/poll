class Party < ActiveRecord::Base
  attr_accessible :abbreviation, :full_name, :colour

  has_many :candidates, dependent: :destroy

  validates :abbreviation, presence: true
end
