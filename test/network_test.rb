require 'minitest/autorun'
require 'minitest/pride'
require './lib/character.rb'
require './lib/show.rb'
require './lib/network.rb'

class NetworkTest < Minitest::Test

  def setup
    @nbc = Network.new("NBC")
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    @parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [@leslie_knope, @ron_swanson])
  end

  def test_that_it_exists

    assert_instance_of Network, @nbc
  end

  def test_that_it_has_attributes

  assert_equal "NBC", @nbc.name
  assert_equal [], @nbc.shows
  end

  def test_that_it_adds_a_show_to_shows

  @nbc.add_show(@knight_rider)
  end


end
