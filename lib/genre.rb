class Genre

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
    def artists
        # Get all songs in a genre
        self.songs.map{|x| x.artist}
        # Return an array of artists of those songs
    end

    def songs
        Song.all.select{|x| x.genre == self}
    end
end