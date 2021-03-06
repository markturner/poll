class Party < ActiveRecord::Base
  attr_accessible :abbreviation, :full_name, :colour

  has_many :candidates, dependent: :destroy
  has_many :responses, dependent: :destroy

  validates :abbreviation, presence: true

  scope :with_votes, where("parties.id IN (SELECT party_id FROM responses)")

  def to_s
    full_name.present? ? full_name : abbreviation
  end
end
