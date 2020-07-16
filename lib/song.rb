

class Song
  @@songs = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@songs.push(self)
  end

  def self.count
    @@songs.count
  end
end
