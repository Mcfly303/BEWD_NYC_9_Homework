require_relative 'lib/tmdb'


def greet
	puts "----------Welcome to the TMDb Top 20 app----------"
	puts "\nTMDb is an open source movie database."  
	puts "Using this app, you can see the top user rated movies in any given year."
	puts "Just give me a year and rock and roll."  
	puts "But be careful to give me a year between 1920 and 2014 only!"
	puts "Otherwise this just isn't going to work out and I'll have to kick you out."
	puts "\nLet's get started!"
	puts "What year would you like to check out?"
end

#this check that the input is a number between 1920 and 2014.  If error, exit program
def sanitize_input(input)
	if (input.is_a?(Fixnum) && (1920..2014).member?(input))

		user_tmdb = Tmdb_top20_per_year.new(input)
		user_tmdb.get_from_tmdb
		puts user_tmdb.parsed_response
	else

		puts 'Sorry, I don\'t understand'
		exit
	end

end

greet
input = gets.strip.to_i
sanitize_input(input)