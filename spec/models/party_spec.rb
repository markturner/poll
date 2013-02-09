require 'spec_helper'

describe Party do
  describe "associations and attributes" do
    [:abbreviation, :full_name, :colour].each do |attr|
      it { should allow_mass_assignment_of(attr) }
    end

    it { should have_many(:candidates) }
  end

  describe "validations" do
    it { should validate_presence_of(:abbreviation) }
  end

  let(:party) { Party.make }

  describe "blueprint" do
    it "is valid" do
      party.should be_valid
    end

    it "fails validation with invalid abbreviation" do
      party.abbreviation = nil
      party.should_not be_valid
    end
  end
end
