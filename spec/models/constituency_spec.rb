require 'spec_helper'

describe Constituency do
  describe "associations and attributes" do
    it { should allow_mass_assignment_of(:name) }

    it { should have_many(:candidates) }
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
end
