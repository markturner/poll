class Api::V1::ResponsesController < ApplicationController
  respond_to :json

  def index
    respond_with Response.all
  end

  def show
    respond_with Response.find(params[:id])
  end

  def create
    response = Response.new(params[:response])

    if response.save
      respond_with response
    else
      render json: response, status: 422
    end
  end
end
