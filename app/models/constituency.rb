class Constituency < ActiveRecord::Base
  attr_accessible :name

  has_many :candidates, dependent: :destroy
  has_many :responses, dependent: :destroy

  validates :name, presence: true

  def to_s
    name
  end

  def self.find_by_address(address)
    begin
      require 'httparty'

      geocode_result = Geocoder.search(address + ", uk").to_json
      coordinates = JSON.parse(geocode_result)[0]['data']['geometry']['location']
      mapit_results = HTTParty.get("http://mapit.mysociety.org/point/4326/#{coordinates['lng']},#{coordinates['lat']}").map {|r| r[1]}
      constituency = mapit_results.select{|r| r['type_name'] == "UK Parliament constituency"}[0]['name']
      self.find_by_name(constituency)
    rescue
      false
    end
  end
end
