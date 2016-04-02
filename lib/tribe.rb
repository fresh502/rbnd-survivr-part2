class Tribe
	attr_reader :name, :members

	def initialize(options={})
		@name = options[:name]
		@members = options[:members]
		puts "Tribe : #{self.name.red}"
	end

	def to_s
		name
	end

	def tribal_council(options={})
		member_voted_off = @members.pop
		member_voted_off = @members.pop if member_voted_off == options[:immune]
		return member_voted_off
	end
end