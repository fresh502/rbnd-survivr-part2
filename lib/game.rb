class Game
	attr_reader :tribes

	def initialize(first_tribe, second_tribe)
		@tribes = [first_tribe, second_tribe]
	end

	def add_tribe(tribe)
		@tribes << tribe
	end

	def immunity_challenge
		@tribes.sample
	end

	def clear_tribes
		@tribes.clear
	end

	def merge(merged_tribe_name)
		Tribe.new({name: merged_tribe_name, members: @tribes[0].members + @tribes[1].members})
	end

	def individual_immunity_challenge
		immunity_challenge.members.pop
	end
end