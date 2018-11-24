class Genre
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def artists
    self.songs.collect {|song| song.artist}
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end
end
