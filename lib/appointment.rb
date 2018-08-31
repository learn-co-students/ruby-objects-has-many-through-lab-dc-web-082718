require 'pry'

class Appointment

  attr_reader :doctor, :patient

  @@all = []

  def initialize(patient, doctor, date)
    @@all << self
    @patient, @doctor, @date = patient, doctor, date
  end

  # Instance Methods


  # Class Methods

  def self.all
    @@all
  end

end
