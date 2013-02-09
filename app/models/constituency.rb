class Constituency < ActiveRecord::Base
  attr_accessible :name

  has_many :candidates, dependent: :destroy
  has_many :responses, dependent: :destroy

  validates :name, presence: true

  def to_s
    name
  end
end
