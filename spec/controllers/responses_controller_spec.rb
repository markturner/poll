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
    before { get :new }

    it "assigns response" do
      assigns(:response).should_not be_nil
    end

    it "is successful" do
      response.should be_success
    end
  end

  describe "POST 'create'" do

  end

end
