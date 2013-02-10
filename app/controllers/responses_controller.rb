class ResponsesController < ApplicationController
  respond_to :html

  def index
    if params[:constituency].present?
      @constituency = Constituency.find(params[:constituency])
    end
  end

  def new
    if params[:location]
      if constituency = Constituency.find_by_address(params[:location][:address])
        respond_with @response = Response.new(constituency: constituency)
      else
        flash.now[:alert] = 'Sorry, this location could not be found. Please try another.' unless constituency
        respond_with @response = Response.new
      end
    end
  end

  def create
    @response = Response.new(params[:response])

    if @response.save
      flash[:message] = "Thanks, your response has been counted"
      respond_with @response
    else
      flash[:alert] = "There was a problem with your response"
      respond_with @response
    end
  end

  def show
    respond_with @response = Response.find(params[:id])
  end
end
