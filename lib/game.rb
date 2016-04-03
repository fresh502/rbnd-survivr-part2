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
		merge_tribe = Tribe.new({name: merged_tribe_name, members: @tribes[0].members + @tribes[1].members})
		clear_tribes
		add_tribe(merge_tribe)
		return merge_tribe
	end

	def individual_immunity_challenge
		immune_member = @tribes[0].members.sample
	end
end