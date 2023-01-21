# 1. The task
Implement the user story:

THIS IS NOT A BOWLING GAME, IT IS A BOWLING SCORECARD PROGRAM. DO NOT GENERATE RANDOM ROLLS. THE USER INPUTS THE ROLLS.

Count and sum the scores of a bowling game for one player. For this challenge, you do not need to build a web app with a UI, instead, just focus on the logic for bowling (you also don't need a database). Next end-of-unit challenge, you will have the chance to translate the logic to Javascript and build a user interface.

A bowling game consists of 10 frames in which the player tries to knock down the 10 pins. In every frame the player can roll one or two times. The actual number depends on strikes and spares. The score of a frame is the number of knocked down pins plus bonuses for strikes and spares. After every frame the 10 pins are reset.

# 2. Design the methods

```ruby
class BowlingGame

    def initialize
        # should initialize w/ an empty array
    end

    def roll(pins)
        # tracks the amount of pins the player did hit
    end

    def score
        # should return the score based on regular points, spare points and strike points
    end

   def strike?(roll_index)
        # check if the frame is a strike
   end

   def strike_score(roll_index)
        # calculates the points of a strike
   end

   def spare?(roll_index)
        # checks if the frame was a spare
   end

   def spare_score(roll_index)
        # calculates the points of a spare
   end

   def frame_score(roll_index)
        # calculates a regular points of a frame
   end

end

```

# 3. examples
```ruby
    # example 1
    @game = BowlingGame.new
    @game.score # => 0

    # example 2
    @game = BowlingGame.new
    20.times{@game.roll(1)}
    @game.score # => 20

    # example 3 -> spare
    @game.roll(5)
    @game.roll(5)
    @game.roll(3)
    @game.score # => 16

    # example 4 -> strike
    @game.roll(10)
    @game.roll(3)
    @game.roll(4)
    16.times{@game.roll(0)}
    @game.score # => 24

    # example 5 -> perfect game
    12.times{@game.roll(10)}
    @game.score # => 30
```