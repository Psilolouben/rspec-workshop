class ShopsController < ApplicationController
  # GET shops
  def index
    render :index, status: :ok
  end
end
