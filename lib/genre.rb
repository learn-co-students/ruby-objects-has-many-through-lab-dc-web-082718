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

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        Song.all.map {|song| song.artist}
    end



end
