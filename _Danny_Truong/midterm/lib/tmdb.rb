require 'rest-client'
require 'json'


class Tmdb_top20_per_year
	attr_accessor :endpoint_url, :parsed_response

	#class variable for API key query
	API_KEY = '&api_key=d58ebdc6f09651e033204262227ebbbb'
	#base url to discover, sort by vote average in descending order, including only titles that have more than 10 votes
	BASE_URL = 'http://api.themoviedb.org/3/discover/movie?sort_by=vote_average.desc&vote_count.gte=10&primary_release_year='

	def initialize(year)
		@endpoint_url = "#{BASE_URL}#{year}#{API_KEY}"
	end

	def get_from_tmdb
		response = RestClient.get(endpoint_url)
		@parsed_response = JSON.parse(response)
	end

	def parsed_response
		@parsed_response['results'].map do |movie|
		 	{rating: movie ['vote_average'], released: movie['release_date'], title: movie['title']}
		end
	end

end