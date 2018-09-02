class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, genre)
  end

  def songs
    #iterates thru all songs using select to find songs that belong to genre
    Song.all.select {|song| song.genre}
  end

  def artists
    self.songs.collect {|song| song.artist}
  end



end
