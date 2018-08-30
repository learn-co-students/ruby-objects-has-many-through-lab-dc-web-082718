class Appointment

  attr_accessor :patient, :patient, :doctor

  @@all = []

  def initialize(date, doctor, patient)
    @patient = patient
    @doctor = doctor
    @date = date
    doctor.patients << @patient
    @@all << self
  end

  def self.all
    @@all
  end

end
