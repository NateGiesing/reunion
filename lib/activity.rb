class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(key, value)
    participants[key] = value
    return participants

  end

  def total_cost(key, value)
    value
    # sum = []
    # # require "pry"; binding.pry
    # participants.each do |value|
    #   sum << value
    # end
    # sum.reduce(:+)
  end

  def split
    total_cost / participants.count
  end

end
