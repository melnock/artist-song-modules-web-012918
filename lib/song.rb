require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist



  @@all = []
  extend Memorable
  extend Findable
  include Paramable

  def initialize
    super
  end

  # def self.find_by_name(name)
  #   @@all.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  def self.all
    @@all
  end
end
