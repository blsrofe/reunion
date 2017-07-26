require 'pry'
class Activity

  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = 0
    @owed_collection = {}
  end

  def add_participant(name, paid)
    @participants[name] = paid
  end

  def total_cost
    @participants.each do |name, paid|
      @total_cost += paid
    end
    @total_cost
  end

  def split
    @total_cost / @participants.count
  end

  def owed
    total_cost
    @participants.each do |name, paid|
      new_value = split - paid
      @owed_collection[name] = new_value
    end
    @owed_collection
  end

end
