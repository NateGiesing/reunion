require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_exists
    activity = Activity.new("Brunch")
    assert_instance_of Activity, activity
  end

  def test_it_knows_name
    activity = Activity.new("Brunch")
    expected = "Brunch"

    assert_equal expected, activity.name
  end

  def test_participants
    activity = Activity.new("Brunch")
    expected = {}

    assert_equal expected, activity.participants
  end

  def test_it_adds_participant
    activity = Activity.new("Brunch")
    expected = activity.participants

    assert_equal expected, activity.add_participant("Jim", 20)
  end

  def test_it_adds_another_participant
    # skip
    activity = Activity.new("Brunch")
    expected = {"Joe" => 40}

    assert_equal expected, activity.add_participant("Joe", 40)
  end

  def test_total_cost
    # skip
    activity = Activity.new("Brunch")
    expected = 20

    assert_equal expected, activity.total_cost("Jim", 20)
  end

  def test_it_adds_participant_in_total_cost
    activity = Activity.new("Brunch")
    expected =
    activity.add_participant("Jim", 20)
    activity.add_participant("Joe", 40)

    assert_equal expected,
  end


end
