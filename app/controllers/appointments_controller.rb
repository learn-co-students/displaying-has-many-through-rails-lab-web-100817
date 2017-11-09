class AppointmentsController < ApplicationController

  # def index
  #   @appointments = Appointments.all
  # end
  #
  # def new
  # end

  def show
    @appointment = Appointment.find(params[:id])
  end

end
