#class for Model3 goes here
#Feel free to change the name of the class

class Artist 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map {|song| song.genre}
  end

  def self.all
    @@all
  end
end