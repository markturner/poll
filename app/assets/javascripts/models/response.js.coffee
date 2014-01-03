Poll.Response = DS.Model.extend(
  will_vote: DS.attr 'boolean'
  candidate: DS.belongsTo 'candidate'
  constituency: DS.belongsTo 'constituency'
)
