require_relative '../src/NameEntry.rb'

RSpec.describe NameEntry do 
  it "should sort left before right" do 
    left = NameEntry.new('A Aaron', {surname: 'Aaron', given_names: 'A'})
    right = NameEntry.new('A Baker', {surname: 'Baker', given_names: 'A'})
    expect(left <=> right).to eq -1
  end

  it "should sort front before back" do 
    back = NameEntry.new('A Aaron', {surname: 'Aaron', given_names: 'A'})
    front = NameEntry.new('A Baker', {surname: 'Baker', given_names: 'A'})
    expect(front <=> back).to eq 1
  end   
end