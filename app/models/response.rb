class Response < ActiveRecord::Base
  attr_accessible :will_vote, :candidate_id

  belongs_to :candidate
  belongs_to :constituency
  belongs_to :party

  validates :will_vote, inclusion: { in: [true, false] }
  validates :candidate, :constituency, :party, presence: true

  before_validation :assign_associations
  def assign_associations
    if candidate.present?
      update_attribute(:constituency, candidate.constituency)
      update_attribute(:party, candidate.party)
    end
  end
end
