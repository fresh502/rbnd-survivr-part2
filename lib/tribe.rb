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
		members_voted_off = @members.reject { |member| member == options[:immune] }
		member_voted_off = members_voted_off.sample
		@members.delete_if { |member| member == member_voted_off }
		return member_voted_off
	end
end