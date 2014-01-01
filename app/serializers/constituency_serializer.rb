class ConstituencySerializer < ActiveModel::Serializer
  attributes :id, :name
  embed :ids, include: true

  has_many :candidates, key: :candidates
end
