require_relative '../sticks_game'

describe SticksGame do
  it "can be created with starting sticks between 10 and 100" do
    game1 = SticksGame.new(10)

  end

  it "raises an error when sticks is less than 10" do
    expect { SticksGame.new(9) }.to raise_error InvalidStartingSticks
  end

  it "raises an error when sticks is greater than 100" do
    expect { SticksGame.new(101) }.to raise_error InvalidStartingSticks
  end

  it "select 1" do
    user_choice = "1"
    SticksGame.new(10).sticks_taken(user_choice)

    expect(@options).to equal(1)
  end

  #
  # it "remove 1 stick" do
  #   expect(game1).to equal 9.
  # end

end
