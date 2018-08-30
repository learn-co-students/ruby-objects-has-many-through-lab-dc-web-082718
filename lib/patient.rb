class Patient
attr_reader :name, :appointments, :doctors

  def initialize (name)
    @name = name
    @appointments = []
    @doctors = []

  end

  def new_appointment (doctor, date)
    appointment = Appointment.new(self, date, doctor)
    @appointments << appointment

    # binding.pry
    appointment
  end

  def add_doctor (doctor)
    @doctors << doctor
  end


end
