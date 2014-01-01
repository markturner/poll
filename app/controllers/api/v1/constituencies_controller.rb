class Api::V1::ConstituenciesController < ApplicationController
  respond_to :json

  def index
    respond_with Constituency.all
  end

  def show
    if Constituency.where(id: params[:id]).present?
      respond_with Constituency.find(params[:id])
    else
      respond_with Constituency.find_by_address(params[:id])
    end
  end
end
