class Activity

  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, cost)
    @participants[name] = cost
  end

  def total_cost
    total_cost = 0
    @participants.each do |name, cost|
      total_cost += cost
    end
    total_cost
  end

end
