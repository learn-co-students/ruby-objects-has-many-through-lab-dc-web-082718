class Song
  attr_reader :name, :genre
  attr_accessor :artist

@@all = []

def self.all
  @@all
end

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    genre.add_song(self)
    genre.add_artist(artist)

    @@all << self
  end

end
