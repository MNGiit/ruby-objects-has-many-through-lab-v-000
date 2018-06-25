class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def doctors
    Appointment.all.select do |appointment|
      appointment.doctor
    end
  end
  
  def self.all
    @@all
  end
end