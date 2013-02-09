class Constituency < ActiveRecord::Base
  attr_accessible :name

  has_many :candidates

  validates :name, presence: true
end
