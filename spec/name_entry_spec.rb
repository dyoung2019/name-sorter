# frozen_string_literal: true

require_relative '../src/name_entry'

RSpec.describe NameEntry do
  it 'should sort left before right' do
    left = NameEntry.new('A Aaron', { surname: 'Aaron', given_names: 'A' })
    right = NameEntry.new('A Baker', { surname: 'Baker', given_names: 'A' })
    expect(left <=> right).to eq(-1)
  end

  it 'should sort front before back' do
    back = NameEntry.new('A Aaron', { surname: 'Aaron', given_names: 'A' })
    front = NameEntry.new('A Baker', { surname: 'Baker', given_names: 'A' })
    expect(front <=> back).to eq 1
  end

  it 'first name sorting A Baker before B Baker' do
    b_b = NameEntry.new('B Baker', { surname: 'Baker', given_names: 'B' })
    a_b = NameEntry.new('A Baker', { surname: 'Baker', given_names: 'A' })
    expect(b_b <=> a_b).to eq 1
  end
end
