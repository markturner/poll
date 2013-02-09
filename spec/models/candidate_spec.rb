require 'spec_helper'

describe Candidate do
  describe "associations and attributes" do
    [:name, :incumbent, :party, :constituency].each do |attr|
      it { should allow_mass_assignment_of(attr) }
    end

    [:party, :constituency].each do |attr|
      it { should belong_to(attr) }
    end

    it { should have_many(:responses) }
  end

  describe "validations" do
    [:name, :party, :constituency].each do |attr|
      it { should validate_presence_of(attr) }
    end

    [true, false].each do |value|
      it { should allow_value(value).for(:incumbent) }
    end
    it { should_not allow_value(nil).for(:incumbent) }
  end

  let(:candidate) { Candidate.make }

  describe "blueprint" do
    it "is valid" do
      candidate.should be_valid
    end

    [:name, :incumbent, :party, :constituency].each do |attr|
      it "fails validation with invalid #{attr}" do
        candidate.send("#{attr}=", nil)
        candidate.should_not be_valid
      end
    end
  end
end
