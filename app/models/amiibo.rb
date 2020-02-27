require 'json'

class Amiibo

	include HTTParty

	base_uri 'https://www.amiiboapi.com/api'

	def self.all
		get ("/amiibo/")
	end

	def self.search(name)
		get "/amiibo/?name=#{name}"
	end

end