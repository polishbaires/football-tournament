class Calc
	def get_points (match)
		arr = match.each_key.to_a
		if match[arr[0]] == match[arr[1]]
			{arr[0] => 1, arr[1] => 1}
		elsif match[arr[0]] > match[arr[1]]
			{arr[0] => 3, arr[1] => 0}
		else
			{arr[0] => 0, arr[1] => 3}
		end	
	end
end
