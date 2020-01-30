class Song

    attr_reader :artist, :genre, :name

    @@all = []

    def initialize(name, artist, genre)
        @artist = artist
        @genre = genre
        @name = name

        @@all << self
    end

    # Class Method
    def self.all
        @@all
    end
end