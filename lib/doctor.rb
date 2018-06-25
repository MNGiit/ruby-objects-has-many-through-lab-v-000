class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointments.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def self.all
    @@all
  end
  
  def genres
    songs.collect do |song|
      song.genre
    end
  end
  
  
end