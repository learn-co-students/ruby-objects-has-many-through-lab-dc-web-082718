require 'pry'

class Artist

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    #creates a new song that knows it belongs to artist
    song = Song.new(name, self, genre)
    @songs << song
    song
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end

  end

end
