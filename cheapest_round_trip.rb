ONWARD_FARE = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
DOWNWARD_FARE = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75]

def print_cheapest_flights(delhi_to_mumbai = ONWARD_FARE, mumbai_to_delhi = MUMBAI_TO_DELHI, cheapest_nth_combo)
  round_trip_combinations = []
	delhi_to_mumbai.sort.each do |departure|
		mumbai_to_delhi.sort.each do |arrival|
			round_trip_combinations << [departure.to_i, arrival.to_i]
		end
	end

	round_trip_combinations.sort_by { |round_trip| round_trip.sum }[0..(cheapest_nth_combo-1)].each do |journey_info|
		puts journey_info.join(', ')
	end
end
