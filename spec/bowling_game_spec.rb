require 'bowling_game'

describe BowlingGame do

  before do 
    @game = BowlingGame.new
  end

  it 'should initialize bowling game class' do 
    20.times{@game.roll(0)}

    expect(@game.score).to eq(0)
  end

  it 'can roll all ones' do 
    20.times{@game.roll(1)}

    expect(@game.score).to eq(20)
  end

  it 'can roll a spare' do 
    @game.roll(5)
    @game.roll(5)
    @game.roll(3)
    17.times{@game.roll(0)}
    expect(@game.score).to eq(16)
  end

  it 'can roll a strike' do 
    @game.roll(10)
    @game.roll(3)
    @game.roll(4)
    17.times{@game.roll(0)}
    expect(@game.score).to eq(24)
  end

  it 'can run a perfect game' do 
    12.times{@game.roll(10)}
    expect(@game.score).to eq(300)
  end
end