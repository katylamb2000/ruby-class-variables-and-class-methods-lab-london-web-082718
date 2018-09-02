class Song
  
  attr_accessor :name, :artist, :genre
 
@@all = []
@@count = 0
@@artists = []
@@genres = []
 
 def initialize (name, artist, genre)
   @name = name
   @artist = artist
   @genre = genre
   @@artists << self.artist
   @@genres << self.genre
   @@count += 1
 end

def self.count
  @@count
end

def self.artists
  @@artists.uniq!
end

def self.genres
  @@genres.uniq!
end

def self.genre_count
  
 return @@genres.group_by{ |v| v }.flat_map{ |k, v| [k => v.size] }
end

def self.artist_count
  return @@artists.group_by { |artist| artist}.map { |key, artist| [key => artist.size]}.flatten
end
end

