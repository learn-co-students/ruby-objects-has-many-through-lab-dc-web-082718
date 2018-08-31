class Artist

  attr_reader :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  # Instance methods

  def new_song(song_name, genre)
    # @songs << Song.new(song_name, self, genre)
    new_song = Song.new(song_name, self, genre)
    @songs << new_song
    new_song
  end

  def genres
    @songs.map{|song| song.genre}
  end

  # Class methods

  def self.all
    @@all
  end

end
