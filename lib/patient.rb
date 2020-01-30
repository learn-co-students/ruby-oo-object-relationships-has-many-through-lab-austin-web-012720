class Patient
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    # Class Methods
    def self.all
        @@all
    end

    # Instance Methods
    def appointments
        Appointment.all.select{|x| x.patient == self}
    end

    def doctors
        # Find all appointments
        all_appoints = Appointment.all.select{|x| x.patient == self}
        # Extract all patients from those appointments
        all_appoints.map{|x| x.doctor}
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
end