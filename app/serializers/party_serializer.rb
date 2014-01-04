class PartySerializer < ActiveModel::Serializer
  attributes :id, :abbreviation, :responses_count

  def responses_count
    object.responses.count
  end
end
