require 'csv'

# parties
csv_text = File.read('db/seeds/parties.csv')
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  Party.find_or_create_by_abbreviation(row.to_hash.symbolize_keys)
end
puts "#{Party.count} parties seeded"

# candidates and constituencies
csv_text = File.read('db/seeds/candidates.csv')
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  row = row.to_hash.symbolize_keys
  constituency = Constituency.find_or_create_by_name(name: row[:Seat])
  candidate = Candidate.find_or_create_by_name( name: row[:Candidate],
                                                incumbent: row[:Sitting].present? ? true : false,
                                                constituency: constituency,
                                                party: Party.find_by_abbreviation(row[:Party])
                                              )
end
puts "#{Candidate.count} candidates seeded"
puts "#{Constituency.count} constituencies seeded"