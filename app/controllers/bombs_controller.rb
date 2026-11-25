class BombsController < ApplicationController
  def index
    @bombs = Bomb.all
    render json: @bombs
  end

  def show
    @bomb = Bomb.find(params[:id])
    render json: @bomb
  end

  def create
    @bomb = Bomb.new(bomb_params)

    if @bomb.save
      render json: @bomb, status: :created
    else
      render json: @bomb.errors, status: :unprocessable_content
    end
  end

  def update
    @bomb = Bomb.find(params[:id])

    if @bomb.update(bomb_params)
      render json: @bomb
    else
      render json: @bomb.errors, status: :unprocessable_content
    end
  end

  def destroy
    @bomb = Bomb.find(params[:id])
    @bomb.destroy!
    head :no_content
  end

  private

  def bomb_params
    params.expect(bomb: [
      :name, :damage, :price, :stock, :potion_id
    ])
  end
end