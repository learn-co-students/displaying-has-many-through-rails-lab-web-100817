class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def time_and_date
    self.appointment_datetime.strftime('%B %d, %Y at %k:%M')
  end

end
