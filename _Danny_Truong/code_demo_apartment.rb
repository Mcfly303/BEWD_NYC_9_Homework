#Explaining classes, objects, attr_accessor & load paths. 
#TIME: 30 min


class Apartment
	attr_accessor :name, :sgft, :num_bedrooms, :num_bathrooms, :renters

	def self.city
		"New York"
	end
	
	def initialize(name, sqft, num_bedrooms, num_bathrooms)
		@name = name
		@rent = 0
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
		@renters = []
	end

	def is_occupied?
		@renters.any?
	end

	def increase_rent(increase)
		@rent += increase
	end

	def to_s
		"#{@name} has #{@sqft} sqare feet and costs #{@rent} per month in #{@city}"
	end	

end

nice_apt = Apartment.new("Prospect Heights", 800, 1, 1)
okay_apt = Apartment.new("Washington Heights", 900, 1.5, 1)
scary_apt = Apartment.new("Murray Hill", 200, 0.5, 0.5)

nice_apt.renters << "Rachel"
nice_apt.renters << "Adam"

if nice_apt.is_occupied?
	puts "This apartment is not for rent"
else
	puts "This apartment is available for rent"
end

puts nice_apt
puts okay_apt
puts scary_apt