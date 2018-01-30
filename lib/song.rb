class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  genre_hash = Hash.new

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def genre_count
    count = 0
    @@genres.each{ |genre|
        genre_hash[genre] = (genre_hash{genre} + 1)
    }
  end
  genre_hash
end
