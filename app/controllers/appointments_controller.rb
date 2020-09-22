class AppointmentsController < ApplicationController
  before_action :token_validity, only: :create
   def index
    appointments = Appointment.all
    render json: {data: appointments}
  end

  def create
    appointment = Appointment.create(
      date: params[:date],
      city: params[:city],
      car_id: params[:car_id],
      user: @user
    )
    # debugger
    if appointment.save 
      render json: {data: appointment}
    else
      render json: {message: 'appointment not created successfully'}
    end
  end

  private 

  def appointment_params
    params.require(:appointment).permit(:date, :city, :car_id, @user)
  end
end
