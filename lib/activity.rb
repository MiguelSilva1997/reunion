class Activity
  attr_reader :name, :participants

  def initialize(name, participants)
    @name = name
    @participants = participants
  end

  def total_cost
    participants.reduce(0.00) do |sum, participant|
      sum += participant[:amount]
    end
  end

  def split
    total_cost / participants.length
  end

  def participant_owes(name)
    participant = look_for_participant(name)
    owe = participant[:amount] - split
    return "#{name} is owed #{owe}" if owe > 0
    return "#{name} owes #{owe.abs}" if owe < 0
  end

  def look_for_participant(name)
    participants.find do |hash|
      hash[:name] == name
    end
  end
end
