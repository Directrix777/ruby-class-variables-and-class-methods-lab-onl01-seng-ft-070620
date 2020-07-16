

class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count = @@count + 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end

  def self.genre_count
    genre_hash = {}
    self.genres.each do |genre|
      genre_hash[genre] = 0
    end
    @@genres.each do |genre|
      genre_hash[genre] += 1
    end
    genre_hash
  end

end
