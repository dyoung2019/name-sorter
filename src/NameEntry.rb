require_relative './Parser.rb'

class NameEntry
  attr_accessor :surname

  def initialize(name, tokens)
    @full_name= name
    @surname = tokens[:surname]
    @given_name = tokens[:given_names]
  end

  def <=>(other) 
    return @surname <=> other.surname
  end

end
