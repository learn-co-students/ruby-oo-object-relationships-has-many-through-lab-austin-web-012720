class Artist
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
    def genres
        # Returns the genre of each song
        self.songs.map{|x| x.genre}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select{|x| x.artist == self}
    end
end