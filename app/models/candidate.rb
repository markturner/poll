class Candidate < ActiveRecord::Base
  attr_accessible :name, :incumbent, :party, :constituency

  belongs_to :party
  belongs_to :constituency
  has_many :responses

  validates :name, :party, :constituency, presence: true
  validates :incumbent, inclusion: { in: [true, false] }
end
