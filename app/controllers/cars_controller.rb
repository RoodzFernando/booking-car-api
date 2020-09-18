class CarsController < ApplicationController
   def index
    cars = Car.all
    render json: {data: cars}
  end

  def show
    car = Car.find_by(slug: params[:id])
      render json: {data: car}
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :mdel_year, :image_url, :price )
  end
end
