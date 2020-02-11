class Character

  attr_reader :char

  def initialize(char)
    @char = char
  end

  def name
    @char[:name]
  end

  def actor
    @char[:actor]
  end

  def salary
    @char[:salary]
  end

end
