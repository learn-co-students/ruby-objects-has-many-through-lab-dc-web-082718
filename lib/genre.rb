class Genre
  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @@all << self
    @name = name
  end

  def new_song(name, artist)
    Song.new(self, name, artist)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
