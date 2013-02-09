class ResponsesController < ApplicationController
  respond_to :html

  def index; end

  def new
    respond_with @response = Response.new
  end

  def create
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
