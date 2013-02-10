class Response < ActiveRecord::Base
  attr_accessible :will_vote, :candidate_id, :constituency, :constituency_id

  belongs_to :candidate
  belongs_to :constituency
  belongs_to :party

  validates :will_vote, inclusion: { in: [true, false], message: 'must be selected' }
  validates :candidate_id, presence: true, if: :will_vote?
  validates :candidate, :constituency, :party, presence: true, if: :will_vote?

  before_validation :assign_associations
  def assign_associations
    if candidate.present?
      update_attribute(:constituency, candidate.constituency)
      update_attribute(:party, candidate.party)
    end
  end
end
