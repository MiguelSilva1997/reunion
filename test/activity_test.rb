require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def setup
    @activity = Activity.new("soccer",[{name: "Miguel" , amount: 10.00},
                                      {name: "Luis" , amount: 15.00},
                                      {name: "Sam" , amount: 5.00},
                                      {name: "Emma", amount: 10.00}])
  end

  def test_if_class_exist
    assert_instance_of Activity, @activity
  end

  def test_if_calculates_the_total_cost
    assert_equal 40.00, @activity.total_cost
  end

  def test_if_splits_the_amount
    assert_equal 10.00, @activity.split
  end

  def test_to_check_how_much_a_participant_owes
    assert_equal "Luis is owed 5.0", @activity.participant_owes("Luis")
    assert_equal "Sam owes 5.0",  @activity.participant_owes("Sam")
  end

end
