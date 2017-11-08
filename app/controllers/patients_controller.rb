class PatientsController < ApplicationController

  before_action :set_patient, only: [:show, :edit, :update]
  
  def index
  
  end
  
  def show
  
  end
  
  def new
    @patient = Patient.new
  end
  
  def create
    @patient = Patient.create(patient_params)
    redirect_to patient_path(@patient)
  end
  
  def edit
  
  end
  
  def update
    @patient.update(patient_params)
    redirect_to patient_path(@patient)
  end
  
  def delete
  
  end
  
  private
  
  def set_patient
    @patient = Patient.find(params[:id])
  end
  
  def patient_params
    params.require(:patient).permit(:name, :age)
  end
end
