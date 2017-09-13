class Reunion
  attr_reader :location
  def initialize(location)
    @location = location
    @activities = []
  end

  def activities
    @activities
  end

  def add_activities(activity)
    @activities << activity
  end

  def total_cost
    sum = 0
    activities.each do |activity|
      sum += activity.total_cost
    end
    sum
  end

  def split
    sum = 0
    activities.each {|activity| sum += activity.participants.count}
    total_cost / sum
  end

end
