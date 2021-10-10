# frozen_string_literal: true

class Parser
  
  def parse(name)
    *given_names, last_name = name.split

    return {surname: last_name, given_names: given_names.join(' ')}
  end

end
