class Doctor
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
        Appointment.all.select{|x| x.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        # Find all appointments
        all_appoints = Appointment.all.select{|x| x.doctor == self}
        # Extract all patients from those appointments
        all_appoints.map{|x| x.patient}
    end

end