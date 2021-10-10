require_relative '../src/Parser.rb'

RSpec.describe Parser do 
   it "should parse into surname: World, given_names: Hello" do 
      p = Parser.new()
      expect(p.parse('Hello World')).to \
         eq({ given_names: 'Hello', surname: 'World' })
   end
end