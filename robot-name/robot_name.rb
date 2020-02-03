require 'pry'

class Robot
  @@robots = []

  attr_reader :name, :letters, :numbers

  def initialize()
    @name = create_name
  end

  def create_name
    letters = 2.times.map { ('a'..'z').to_a.sample }.join.upcase
    numbers = 3.times.map { (0..9).to_a.sample }.join
    potential_name = letters + numbers
    if @@robots.include?(potential_name)
      create_name
    else
      @@robots << (letters + numbers)
      letters + numbers
    end
  end

  def reset
    @name = create_name
  end

  def self.forget

  end

end
