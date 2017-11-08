class DoctorsController < ApplicationController

  def set_doctor
    @doctor = Doctor.find(params[:id])

  end
  helper_method :set_doctor

  before_action :set_doctor, only: [:show]

  def show
    #code
  end

  def index
    @doctors = Doctor.all
  end
end
