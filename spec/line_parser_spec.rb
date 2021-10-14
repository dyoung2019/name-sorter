# frozen_string_literal: true

require_relative '../src/line_parser'

RSpec.describe LineParser do
  it 'should parse into surname: World, given_names: Hello' do
    p = LineParser.new
    expect(p.parse('Hello World')).to eq({ given_names: 'Hello', surname: 'World' })
  end

  it 'should parse into surname: World, given_names: A A' do
    p = LineParser.new
    expect(p.parse('A A World ')).to eq({ given_names: 'A A', surname: 'World' })
  end
end
