class Team
	attr_accessor :name, :score
	def initialize (name, score = 0)
		@name = name
		@score = score
	end
	def set_score (score)
		raise 'Score must be integer' unless score.is_a? Integer
		@score = score
	end
end