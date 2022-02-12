require 'rspec'
require './lib/player'
require './lib/board'
require './lib/space'

describe Space do
  it "exists" do
    cell = Space.new('a1')
    expect(cell).to be_an_instance_of(Space)
  end

  it "contains the status of a cell" do
    cell = Space.new('a1')
    expect(cell.is_empty).to be(true)
  end

  it "contais the symbol variable with the defaul '.' value" do
    cell = Space.new('a1')
    expect(cell.symbol).to eq('.')
  end

  it "contains the coordinates of a cell" do
    cell = Space.new('a1')
    expect(cell.coords).to eq('a1')
  end

end
