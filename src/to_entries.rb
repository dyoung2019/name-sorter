# frozen_string_literal: true

require_relative './line_parser'
require_relative './name_entry'

def to_entries(lines)
  parser = LineParser.new
  lines.map do |line|
    original = line.chomp
    tokens = parser.parse(original)
    NameEntry.new(original, tokens)
  end
end
