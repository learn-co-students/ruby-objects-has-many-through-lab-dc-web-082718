require "pry"

class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
  end

  def songs
    # get array of all songs ever
    all_songs = Song.all
    # iterate (collect) through all songs
    all_songs.select do |song|
      # check if each song's artist matches self
      if song.artist == self
        # if true, return new array of those songs
        song
      end
    end
  end


  def genres
    genres_array = []
    self.songs.each do |song|
      genres_array << song.genre
    end
    # binding.pry
    genres_array.uniq
  end

end
