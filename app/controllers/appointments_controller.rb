class AppointmentsController < ApplicationController
   def index
    appointments = Appointment.all
    render json: {data: appointments}
  end

   def create
    appointment = Appointment.new(appointment_params)
    if appointment.save 
      render json: {data: appointment}
    else
      render json: {message: 'user not created successfully'}
    end
  end

  private 

  def appointment_params
    params.require(:appointment).permit(:date, :city, :car_id, :user_id)
  end
end
