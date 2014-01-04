class Api::V1::PartiesController < ApplicationController
  respond_to :json

  def index
    respond_with Party.with_votes
  end

  def show
    constituency = Constituency.find(params[:id]) || Constituency.find_by_address(params[:id])
    if constituency.present?
      respond_with constituency.responses.map(&:party).flatten
    end
  end
end
