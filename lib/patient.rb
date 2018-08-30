class Patient

  attr_reader :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []

  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, doctor, self)
    @appointments << appointment
    @doctors << doctor
    appointment

  end

end
