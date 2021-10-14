# frozen_string_literal: true

require_relative 'to_entries'

def sort_into_names(lines)
  to_entries(lines).sort
end
