class Response < ActiveRecord::Base
  attr_accessible :will_vote

  belongs_to :candidate

  validates :will_vote, inclusion: { in: [true, false] }
  validates :candidate, presence: true
end
