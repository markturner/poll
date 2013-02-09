class ResponsesController < ApplicationController
  respond_to :html

  def index
    if params[:constituency].present?
      @constituency = Constituency.find(params[:constituency])
    end
  end

  def new
    respond_with @response = Response.new
  end

  def create
    @response = Response.new(params[:response])

    if @response.save
      flash[:message] = "Thanks, your response has been counted"
    else
      flash[:alert] = "Oops, something went wrong"
    end

    respond_with @response
  end

  def show
    respond_with @response = Response.find(params[:id])
  end
end
