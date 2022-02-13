require 'rspec'
require './lib/player'
require './lib/board'
require './lib/space'

describe Space do
  it "exists" do
    cell = Space.new
    expect(cell).to be_an_instance_of(Space)
  end

  it "contains the status of a cell" do
    cell = Space.new
    expect(cell.is_empty).to be(true)
  end

  it "contains the symbol variable with the default '.' value" do
    cell = Space.new
    expect(cell.symbol).to eq('.')
  end

end
