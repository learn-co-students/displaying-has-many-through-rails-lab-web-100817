class PatientsController < ApplicationController

  def set_patient
    @patient = Patient.find(params[:id])

  end
  helper_method :set_patient

  before_action :set_patient, only: [:show]

  def show
    #code
  end

  def index
    @patients = Patient.all
  end
end
