require 'machinist/active_record'

Candidate.blueprint do
  name          { Faker::Name.name }
  incumbent     { false }
  party
  constituency
end

Party.blueprint do
  abbreviation  { Faker::Lorem.word }
  full_name     { Faker::Lorem.words.join }
end

Constituency.blueprint do
  name          { Faker::Address.city }
end

Response.blueprint do
  will_vote     { true }
  candidate
end
