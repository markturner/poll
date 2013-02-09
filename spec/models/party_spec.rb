require 'spec_helper'

describe Party do
  describe "associations and attributes" do
    [:abbreviation, :full_name, :colour].each do |attr|
      it { should allow_mass_assignment_of(attr) }
    end

    [:candidates, :responses].each do |assoc|
      it { should have_many(assoc) }
    end
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

  describe "#to_s" do
    context "with full name" do
      it "returns party full name" do
        party.to_s.should eq party.full_name
      end
    end

    context "without full name" do
      before { party.full_name = nil }

      it "returns party abbreviation" do
        party.to_s.should eq party.abbreviation
      end
    end
  end
end
