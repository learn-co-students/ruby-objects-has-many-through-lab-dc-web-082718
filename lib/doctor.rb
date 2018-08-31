require 'pry'

class Doctor

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  # Instance Methods

  def new_appointment(patient, date)
    new_appt = Appointment.new(patient, self, date)
    @appointments << new_appt
    new_appt
  end

  def patients
    @appointments.map{|apt| apt.patient}
  end

  # Class Methods

  def self.all
    @@all
  end

end
