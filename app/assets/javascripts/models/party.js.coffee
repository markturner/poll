Poll.Party = DS.Model.extend(
  abbreviation: DS.attr 'string'
  responses_count: DS.attr 'number'
  candidates: DS.hasMany 'candidate'
  responses: DS.hasMany 'response'
)
