Poll.Candidate = DS.Model.extend(
  name: DS.attr 'string'
  responses: DS.hasMany 'response'
  constituency: DS.belongsTo 'constituency'
  party: DS.belongsTo 'party'
)
