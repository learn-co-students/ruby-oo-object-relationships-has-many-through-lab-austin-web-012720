class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select{|x| x.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    total_songs = Song.all.select{|x| x.artist == self}
    total_songs.map{|x| x.genre}
  end

  def self.all
    @@all
  end

end
