require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'
require "./lib/activity"

class ReunionTest < Minitest::Test
  def setup
    @activity1 = Activity.new("soccer", [{name: "Miguel" , amount: 10.00},
                                      {name: "Luis" , amount: 15.00},
                                      {name: "Sam" , amount: 5.00},
                                      {name: "Emma", amount: 10.00}])
    @activity2 = Activity.new("tennis", [{name: "Miguel" , amount: 10.00},
                                      {name: "Luis" , amount: 15.00},
                                      {name: "Sam" , amount: 5.00},
                                      {name: "Emma", amount: 10.00}])
    @reunion = Reunion.new("London")
  end

  def test_check_if_class_exist
    assert_instance_of Reunion, @reunion
  end

  def test_if_can_add_activities
    @reunion.add_activities(@activity1)

    assert_equal 1, @reunion.activities.count
  end

  def test_total_cost_of_reunion
    @reunion.add_activities(@activity1)
    @reunion.add_activities(@activity2)

    assert_equal 80.00, @reunion.total_cost
  end
end
