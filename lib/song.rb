class Song

  attr_accessor :artist
  attr_reader :name, :genre
  @@all = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.songs << self
    genre.artists << self.artist
    @@all << self
  end

  def self.all
    @@all
  end




end
