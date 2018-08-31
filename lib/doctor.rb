require "pry"

class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
  end

  def appointments
    all_appts = Appointment.all

    all_appts.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    appointments.collect do |appt|
      appt.patient
    end
  end
end
