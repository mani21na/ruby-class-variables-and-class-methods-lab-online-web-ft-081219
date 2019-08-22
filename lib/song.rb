require 'pry'

class Song 
  #setter, getter
  attr_accessor :name, :artist, :genre 
  
  #class variables
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end
  
  #a class methods
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.uniq.each do |x|
      genre_count[x]
      genre_count[x] = @@genres.find_all{|y| y == x}.count
      #binding.pry
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.uniq.each do |x|
      artist_count[x]
      artist_count[x] = @@artists.find_all{|y| y == x}.count
    end 
    artist_count
  end
end

#song = Song.new("a-1","b","g-1")
#song = Song.new("a-2","b","g-2")
#song = Song.new("a-3","b","g-3")
#song = Song.new("a-4","b","g-3")
#Song.genre_count