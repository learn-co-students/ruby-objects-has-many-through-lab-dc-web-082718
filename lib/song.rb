class Song

  @@all = []

  attr_reader :genre, :name
  attr_accessor :artist

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
    genre.songs << self
  end

  # Class Methods

  def self.all
    @@all
  end

  # Instance Methods

end
