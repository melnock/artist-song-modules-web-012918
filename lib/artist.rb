require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs



  @@all = []
  extend Memorable
  extend Findable
  include Paramable


  def initialize
    super
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
