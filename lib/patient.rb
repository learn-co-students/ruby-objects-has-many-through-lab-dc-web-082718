class Patient

  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  # Instance Methods

  def new_appointment(doctor, date)
    new_appt = Appointment.new(self, doctor, date)
    @appointments << new_appt
    new_appt
  end

  def doctors
    @appointments.map{|apt| apt.doctor}
  end

  # Class Methods

end
