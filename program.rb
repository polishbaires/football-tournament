require_relative 'lib/logging'
include Logging
class Program
	attr_accessor :teams
	def initialize (matches)
		@teams = []
		matches.each do |match|
			match.each_key do |key|
				preload_team key
			end
			points = Calc.new.get_points match
			add_points points
		end
		Logging.log("New #{self.class.name} (#{object_id}) initialized")
	end
	def preload_team (name)
		@teams.push(Team.new(name)) unless @teams.any?{|x| x.name == name}
	end
	def add_points(points)
		points.each_key do |key|
			team = @teams.select{|x| x.name == key}.first
			team.score += points[key]
		end
	end
	def print_table
		puts ""
		puts "FINAL SCORES"
		format = '%-10s %s'
		puts format % ["Team", "Score"]
		@teams.sort_by {|x| x.score }.reverse.each do |team|
			puts format % [team.name, team.score]
		end
		puts ""
		Logging.log("Printed scores", Logger::DEBUG)
	end
end

