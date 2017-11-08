class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update]
  
  def show
  
  end
  
  def new
    @appointment = Appointment.new
  end
  
  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end
  
  def edit
  
  end
  
  def update
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end
  
  private
  
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
  
  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
  end
end
