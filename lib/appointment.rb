class Appointment
  attr_reader :date, :patient
  attr_accessor :doctor

@@all = []

def self.all
  @@all
end

  def initialize (patient, date, doctor)
    @date = date
    @doctor = doctor
    @patient = patient

    # binding.pry
    # patient.new_appointment(self)
    patient.add_doctor(doctor)

    @@all << self
  end

end
