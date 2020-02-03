class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
      Song.all.select{|x| x.genre == self}
  end

  def artists
    total_songs = Song.all.select{|x| x.genre == self}
    total_songs.map{|x| x.artist}
  end

  def self.all
    @@all
  end

end
