class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  

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
    genre_hash = Hash.new
    count = 0
    @@genres.each{ |genre| do
        genre_hash[genre] = (genre_hash{genre} + 1)
    end
  end
end
