class CarsController < ApplicationController
   def index
    cars = Car.all
    render json: {data: cars}
  end

  def show
    car = Car.find(params[:id])
      render json: {data: car}
  end
end
