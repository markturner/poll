require 'spec_helper'

describe ResponsesController do
  let(:user_response) { Response.make! }

  describe "GET 'index'" do
    before { get :index }

    it "is successful" do
      response.should be_success
    end

    it "renders index template" do
      response.should render_template :index
    end
  end

  describe "GET 'show'" do
    before { get :show, id: user_response.id }

    it "is successful" do
      response.should be_success
    end

    it "assigns response" do
      assigns(:response).should eq user_response
    end

    it "renders the 'show' template" do
      response.should render_template :show
    end
  end

  describe "GET 'new'" do
    context "with address" do
      before { get :new, "location"=>{"address"=>"cf11"} }

      it "assigns response" do
        assigns(:response).should_not be_nil
      end

      it "is successful" do
        response.should be_success
      end
    end

    context "without address" do
      before { get :new }

      it "is successful" do
        response.should be_success
      end
    end
  end

  describe "POST 'create'" do

  end

end
