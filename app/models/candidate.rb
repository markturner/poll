class Candidate < ActiveRecord::Base
  attr_accessible :name, :incumbent, :party, :constituency

  belongs_to :party
  belongs_to :constituency
end
