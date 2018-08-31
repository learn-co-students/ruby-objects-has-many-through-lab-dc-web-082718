require "pry"

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end


  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
  end

  def appointments
    all_apts = Appointment.all

    all_apts.select do |appt|
      appt.patient = self
    end
  end

  def doctors
    appointments.collect do |appt|
      appt.doctor
    end
  end


end
