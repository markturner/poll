class Party < ActiveRecord::Base
  attr_accessible :abbreviation, :name, :colour

  has_many :candidates
end
