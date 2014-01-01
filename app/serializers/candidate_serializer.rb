class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :name
  embed :ids, include: true

  has_one :party, key: :party
end
