class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select{|x| x.doctor == self}
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    all_appts = Appointment.all.select{|x| x.doctor == self}
    all_appts.map{|x| x.patient}
  end

  def self.all
    @@all
  end

end
