class HomeController < ApplicationController
  def index
    render :index, layout: 'ember'
  end
end
