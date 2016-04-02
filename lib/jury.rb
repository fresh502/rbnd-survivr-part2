class Jury
	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(contestant)
		@members << contestant
	end

	def cast_votes(finalists)
		final_votes = {}
		members.each do |member|
			puts "Voter : #{member}"
			finalist_selected = finalists.sample
			final_votes[finalist_selected] ? final_votes[finalist_selected] += 1 : final_votes[finalist_selected] = 1
		end
		return final_votes
	end

	def report_votes(final_votes)
		final_votes.each do |finalist, votes|
			puts "#{finalist} : #{votes}"
		end
	end

	def announce_winner(final_votes)
		final_votes.values.first > final_votes.values.last ? final_votes.keys.first : final_votes.keys.last
	end
end