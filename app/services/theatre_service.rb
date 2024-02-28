require 'httparty'
class TheatreService
    include HTTParty
    def initialize
    end
    def theatres
        response = HTTParty.get('https://www.cineplex.com/api/v1/theatres?language=en-us&range=100000&skip=0&take=1000')
        return [] unless response.success?

        return response.parsed_response['data']
    end
end