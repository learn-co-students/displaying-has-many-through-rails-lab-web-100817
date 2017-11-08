class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update]
  
  def index
  
  end
  
  def show
  
  end
  
  def new
    @doctor = Doctor.new
  end
  
  def create
    @doctor = Doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end
  
  def edit
  
  end
  
  def update
    @doctor.update(doctor_params)
    redirect_to doctor_path(@doctor)
  end
  
  def delete
  
  end
  
  private
  
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
  
  def doctor_params
    params.require(:doctor).permit(:name)
  end
end
