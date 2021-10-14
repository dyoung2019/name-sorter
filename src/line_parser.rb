# frozen_string_literal: true

# Breaks up a line into components
class LineParser
  def parse(name)
    *given_names, last_name = name.split

    { surname: last_name, given_names: given_names.join(' ') }
  end
end
