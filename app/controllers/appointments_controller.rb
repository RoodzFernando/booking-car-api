# frozen_string_literal: true

class AppointmentsController < ApplicationController
  before_action :token_validity, only: :create
  def show
    user_id = User.find(params[:id])
    query = "SELECT make, model, city, date from cars
                    INNER JOIN appointments ON
                    cars.id = appointments.car_id
                    WHERE appointments.user_id = #{user_id.id}
                    ORDER BY appointments.date DESC"

    appointments = ActiveRecord::Base.connection.execute(query)
    render json: { data: appointments }
 end

  def create
    appointment = Appointment.create(
      date: params[:date],
      city: params[:city],
      car_id: params[:car_id],
      user: @user
    )
    if appointment.save
      render json: { data: appointment }
    else
      render json: { message: 'appointment not created successfully' }
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :city, :car_id, @user)
  end
end
