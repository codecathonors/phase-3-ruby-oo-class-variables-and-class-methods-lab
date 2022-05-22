require 'pry'

class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.uniq.each do |genre|
            hash[genre] = @@genres.count genre
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.uniq.each do |artist|
            hash[artist] = @@artists.count artist
        end
        hash
    end



end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

# binding.pry