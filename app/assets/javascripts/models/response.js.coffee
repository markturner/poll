Poll.Response = DS.Model.extend(
  will_vote: DS.attr('boolean', defaultValue: false)
  candidate: DS.belongsTo 'candidate'
  constituency: DS.belongsTo 'constituency'
)
