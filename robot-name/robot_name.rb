require 'pry'

class Robot
  attr_reader :name, :letters, :numbers

  def initialize()
    @name = create_name
  end

  def create_name
    letters = 2.times.map { ('a'..'z').to_a.sample }.join.upcase
    numbers = 3.times.map { (0..9).to_a.sample }.join
    letters + numbers
  end

  def self.forget

  end

end
