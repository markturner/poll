class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :will_vote
  embed :ids, include: true

  has_one :candidate, key: :candidate
  has_one :constituency, key: :constituency
end
