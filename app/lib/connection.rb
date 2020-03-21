require 'faraday'
require 'json'

class Connection
    BASE = 'https://wordsapiv1.p.rapidapi.com/words'

    def self.api
        Faraday.new(url: BASE) do |faraday|
            faraday.response :logger
            faraday.adapter Faraday.default_adapter
            faraday.headers['Content-Type'] = 'application/json'
            faraday.headers['x-rapidapi-key'] = ENV['RAPIDAPI_KEY']
            faraday.headers['x-rapidapi-host'] = 'wordsapiv1.p.rapidapi.com'
        end
    end
end