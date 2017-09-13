require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def setup
    @activity = Activity.new("Miguel", "luis")
  end

  def test_if_class_exist
    assert_instance_of Activity, @activity
  end

  def test_if_calculates_the_total_cost
end
