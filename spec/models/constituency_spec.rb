require 'spec_helper'

describe Constituency do
  describe "associations and attributes" do
    it { should allow_mass_assignment_of(:name) }

    [:candidates, :responses].each do |assoc|
      it { should have_many(assoc) }
    end
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  let(:constituency) { Constituency.make }

  describe "blueprint" do
    it "is valid" do
      constituency.should be_valid
    end

    it "fails validation with invalid name" do
      constituency.name = nil
      constituency.should_not be_valid
    end
  end

  describe "#to_s" do
    it "returns constituency name" do
      constituency.to_s.should eq constituency.name
    end
  end
end
