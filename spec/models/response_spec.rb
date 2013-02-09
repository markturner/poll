require 'spec_helper'

describe Response do
  describe "associations and attributes" do
    [:will_vote, :candidate_id].each do |attr|
      it { should allow_mass_assignment_of(attr) }
    end

    [:candidate, :constituency, :party].each do |assoc|
      it { should belong_to(assoc) }
    end
  end

  describe "validations" do
    [true, false].each do |value|
      it { should allow_value(value).for(:will_vote) }
    end
    it { should_not allow_value(nil).for(:will_vote) }

    [:candidate, :constituency, :party].each do |attr|
      it { should validate_presence_of(attr) }
    end
  end

  let(:response) { Response.make }

  describe "blueprint" do
    it "is valid" do
      response.should be_valid
    end

    [:will_vote, :candidate].each do |attr|
      it "fails validation with invalid #{attr}" do
        response.send("#{attr}=", nil)
        response.should_not be_valid
      end
    end
  end
end
