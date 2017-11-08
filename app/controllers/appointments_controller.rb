class AppointmentsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  def new
    @appointment = Appointment.new
  end

  def show
    @appointment = Appointment.find(params[:id])
  end


  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path(@appointment)
    else
      render :new
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      redirect_to appointments_path(@appointment)
    else
      render :edit
    end
  end
  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

  private
  def appointment_params
    params.require(:appointment).permit(:appointment_datetime,:doctor_name, :doctor)
  end
end
