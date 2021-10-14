# frozen_string_literal: true

# object to handle name sorting
class NameEntry
  attr_accessor :full_name, :surname, :given_name

  def initialize(name, tokens)
    @full_name = name
    @surname = tokens[:surname]
    @given_name = tokens[:given_names]
  end

  def <=>(other)
    check = @surname <=> other.surname

    return check if check != 0

    given_name <=> other.given_name
  end
end
