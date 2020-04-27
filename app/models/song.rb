#class for Model1 goes here
#Feel free to change the name of the class

class Song
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@all << self
  end

  def self.all 
    @@all 
  end
end