class Genre
  attr_accessor :name
  @@all = []
  def initialize(genre)
    @name = genre
    @@all << self
  end
  
  def self.all
    @@all
  end


  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end
end