require('rspec')
require('queen_attack')
require('pry')

describe('attack') do

  it('is out of range if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect(attack([1,1],[2,3])).to(eq("out of range"))
  end

  it('is a vertical hit if the coordinates are vertically in line with each other') do
    expect(attack([1,1],[1,2])).to(eq("hit - vertical"))
  end

  it('is a horizontal hit if the coordinates are horizontally in line with each other') do
    expect(attack([1,1],[2,1])).to(eq("hit - horizontal"))
  end

  it('is a diagonal hit if the coordinates are diagonally in line with each other') do
    expect(attack([1,1],[8,8])).to(eq("hit - diagonal"))
  end

end
