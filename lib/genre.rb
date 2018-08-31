class Genre

  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  # Instance methods

  def artists
    @songs.map{|song| song.artist}
  end

end
