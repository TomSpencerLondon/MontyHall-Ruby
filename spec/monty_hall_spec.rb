require './lib/monty_hall'

RSpec.describe MontyHall do
  let(:subject) do
    described_class.new
  end

  it 'switch as true returns around 66.6%' do
    subject.simulate_game(1000, true)

    expect(subject.percent_wins).to be_within(5).of(66.6)
  end

  it 'switch as false returns around 33.3%' do
    subject.simulate_game(1000, false)

    expect(subject.percent_wins).to be_within(5).of(33.3)
  end
end