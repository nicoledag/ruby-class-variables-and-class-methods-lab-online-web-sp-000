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

new_count = Hash.new(0)

    @@genres.collect do |key, value|
      if @@genres.include?(key)
       new_count << @@genres[value] += 1

      else
        @@genres[value] = [key]
      end
    end
  end

  def self.artist_count

  end

end
