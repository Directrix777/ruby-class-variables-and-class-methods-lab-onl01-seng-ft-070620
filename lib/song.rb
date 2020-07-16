

class Song
  @@songs = 0
  @@genres = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@songs += 1
    @@genres << genre unless genres.include?(genre)
  end

  def self.count
    @@songs.count
  end
end
