require 'spec_helper'

describe Response do
  describe "associations and attributes" do
    it { should allow_mass_assignment_of(:will_vote) }
    it { should belong_to(:candidate) }
  end

  describe "validations" do
    [true, false].each do |value|
      it { should allow_value(value).for(:will_vote) }
    end
    it { should_not allow_value(nil).for(:will_vote) }
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
