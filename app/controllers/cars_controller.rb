# frozen_string_literal: true

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
