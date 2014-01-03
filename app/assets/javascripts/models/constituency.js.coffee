Poll.Constituency = DS.Model.extend(
  name: DS.attr 'string'
  candidates: DS.hasMany 'candidate'
  responses: DS.hasMany 'response'
)
