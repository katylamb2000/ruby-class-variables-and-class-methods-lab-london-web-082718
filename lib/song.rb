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
  # genre_count = @@genres.group_by { |genre| genre.collect { |key, genre| [key => genre.size] }}
 return @@genres.group_by{ |v| v }.flat_map{ |k, v| [k => v.size] }


# values.group_by { |v| ranges.find { |r| r.cover? v } }
end
end

def self.artist_count
  artist_count = @@artist.group_{ |artist| artist}.map { |key, artist| [key => artist.size]}
end

