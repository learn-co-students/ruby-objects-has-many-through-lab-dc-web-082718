require 'pry'

class Artist
  attr_reader :name, :genres, :songs

@@all = []

def self.all
  @@all
end

  def initialize (name)
    @name = name
    @@all << self
    @songs = []
    @genres = []

  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    song
  end

  def genres
    @genres = @songs.collect { |song| song.genre }
  end

end
