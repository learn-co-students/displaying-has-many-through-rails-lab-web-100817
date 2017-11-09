class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def appointments_params
    params.require(:appointments).permit(:appointment_datetime, :doctor_id, :patient_id)
  end

end
