class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def month_name
    Date::MONTHNAMES[self.appointment_datetime.month]
  end

  def day
    self.appointment_datetime.day
  end

  def year
    self.appointment_datetime.year
  end

  def time
    self.appointment_datetime.strftime("%H:%M")
  end

  def date
    "#{self.month_name} #{self.day}, #{self.year} at #{self.time}"
  end
end
