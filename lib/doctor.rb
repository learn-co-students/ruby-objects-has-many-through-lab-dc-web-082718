class Doctor


  attr_reader :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(patient, self, date)
    appointments << appointment
    appointment

  end
end
