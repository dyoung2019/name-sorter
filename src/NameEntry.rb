require_relative './Parser.rb'

class NameEntry
  attr_accessor :full_name
  attr_accessor :surname
  attr_accessor :given_name

  def initialize(name, tokens)
    @full_name= name
    @surname = tokens[:surname]
    @given_name = tokens[:given_names]
  end

  def <=>(other) 
    check_0 = @surname <=> other.surname

    return check_0 if check_0 != 0
    return given_name <=> other.given_name
  end

end
