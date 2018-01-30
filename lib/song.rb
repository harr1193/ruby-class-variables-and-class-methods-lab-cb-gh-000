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
    @@genres.each do |genre|
      if genre_hash[genre] == nil
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
    end
  end
end
