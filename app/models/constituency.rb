class Constituency < ActiveRecord::Base
  attr_accessible :name

  has_many :candidates, dependent: :destroy

  validates :name, presence: true
end
