class DoctorsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def show
    @doctor = Doctor.find(params[:id])
  end 
end
