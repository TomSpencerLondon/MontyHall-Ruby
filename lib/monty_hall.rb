
class MontyHall
  def initialize
    @games_won = 0
  end

  def play(switch)
    car_is_in = rand(0..2)
    door_selected = rand(0..2)
    revealed_door = [0,1,2].select{ |door| door != car_is_in && door != door_selected }
    if switch
      return [0,1,2].select{ |door| door != door_selected && !revealed_door.include?(door) }.include?(car_is_in)
    else
      car_is_in == door_selected
    end
  end

  def simulate_game(number, switch)
    number.times do
      @games_won += 1 if play(switch)
    end

    @games_won
  end

  def percent_wins
    (@games_won / 1000r).to_f * 100
  end
end

puts MontyHall.new.simulate_game(1000, true)
puts MontyHall.new.simulate_game(1000, false)
