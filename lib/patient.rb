class Patient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{|x| x.patient == self}
  end

  def doctors
    all_appts = Appointment.all.select{|x| x.patient == self}
    all_appts.map{|x| x.doctor}
  end

  def self.all
    @@all
  end

end
