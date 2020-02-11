require './lib/character.rb'
require './lib/show.rb'

class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show
    @shows << show
  end

end
