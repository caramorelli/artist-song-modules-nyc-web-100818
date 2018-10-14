require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'

class Song
  extend Memorable
  extend Findable
  include Paramable
   Memorable::InstanceMethods
  Memorable::ClassMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
