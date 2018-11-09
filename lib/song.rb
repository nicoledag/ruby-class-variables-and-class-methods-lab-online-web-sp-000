require 'pry'

class Song

  attr_accessor
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
   @name = name
   @artist = artist
   @genre = genre

   @@count += 1
   @@genres << @genre
   @@artists << @artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
      @@artists.uniq!
  end

  def self.genre_count

binding.pry

    @@genres.collect do |key, value|
      if @@genres.include?(key)
           @@genres[value.to_i] += 1
           @@genres
      else
        @@genres[value] = [key]
      end
    end
  end

  def self.artist_count

  end

end
