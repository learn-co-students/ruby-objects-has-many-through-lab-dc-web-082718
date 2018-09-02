
class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    #iterates thru all songs using select to find songs that belong to artist
    Song.all.select {|song| song.artist == self}
  end

  def genres
    #iterates over artist songs and collects genre of each song
    self.songs.collect {|song| song.genre}
  end



end
