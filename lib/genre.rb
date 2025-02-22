require 'pry'

class Genre

	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		Genre.all << self
	end

	def self.all 
		@@all 
	end

	def songs
		Song.all do |song|
			song.genre == self
		end
	end

	def artists
		songs.map(&:artist)
	end

	def add_song(song)
		songs << song
	end


end