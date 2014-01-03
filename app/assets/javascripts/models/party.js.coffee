Poll.Party = DS.Model.extend(
  abbreviation: DS.attr 'string'
  candidates: DS.hasMany 'candidate'
  responses: DS.hasMany 'response'
)
