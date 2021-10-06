class Calc
	# output is hash of {team_name => points} where
	# points is the points earned in the match
	# TODO: optimize this
	def get_points (match)
		arr = match.each_key.to_a
		if match[arr[0]] == match[arr[1]]
			{arr[0].to_sym => 1, arr[1].to_sym => 1}
		elsif match[arr[0]] > match[arr[1]]
			{arr[0].to_sym => 3, arr[1].to_sym => 0}
		else
			{arr[0].to_sym => 0, arr[1].to_sym => 3}
		end	
	end
end
