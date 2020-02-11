require './lib/character'

class Show

  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
    @salary_total = 0
  end

  def salary_total
    @characters.each do |character|
      @salary_total += character.salary
    end
    @salary_total
  end
  
end
