require 'machinist/active_record'

Candidate.blueprint do
  name          { Faker::Name.name }
  incumbent     { false }
  party
  constituency
end

Party.blueprint do
  abbreviation  { Faker::Lorem.word }
  full_name     { Faker::Lorem.words }
end

Constituency.blueprint do
  name          { Faker::Address.city }
end
