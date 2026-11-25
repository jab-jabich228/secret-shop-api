class PotionsController < ApplicationController
  def index
    @potions = Potion.all
    render json: @potions
  end

  def show
    @potion = Potion.find(params[:id])
    render json: @potion
  end
end
