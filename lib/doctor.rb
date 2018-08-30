require 'pry'

class Doctor
  attr_reader :name, :patients, :appointments

@@all = []

def self.all
  @@all
end

  def initialize (name)
    @name = name
    @@all << self
    @appointments = []
    @patients = []

  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date, self)
    @appointments << appointment

    # binding.pry
    appointment
  end

  def patients
    @patients = @appointments.collect { |appointment| appointment.patient }
  end

end
