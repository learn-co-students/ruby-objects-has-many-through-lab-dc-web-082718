class Patient

    attr_accessor :name

    def initialize(name)
        @name
    end

    def new_appointment(doctor,date)
        Appointment.new(date,doctor,self)
    end

    def appointments
        Appointment.all.select{|app| app.patient == self }
    end

    def doctors
        appointments.map {|app| app.doctor}
    end


end
