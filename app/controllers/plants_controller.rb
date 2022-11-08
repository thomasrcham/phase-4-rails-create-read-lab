class PlantsController < ApplicationController
  def index
    render json: Plant.all
  end

  def show
    render json: Plant.find_by(id: params[:id])
  end

  def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  def plant_params
    params.permit(:name, :image, :price)
  end
end
