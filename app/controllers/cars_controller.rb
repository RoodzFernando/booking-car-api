# frozen_string_literal: true

# cars_controller
class CarsController < ApplicationController
  def index
    cars = Car.all
    render json: { data: cars }
  end

  def show
    car = Car.find_by(slug: params[:id])
    render json: { data: car }
  end
end
