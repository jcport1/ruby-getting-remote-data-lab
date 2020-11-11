# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  attr_accessor :URL

  def initialize(url)

    @url = url

  end 

#   def initialize 
#     get_requester = GetRequester.new(URL)
#   end

  
  def get_response_body

    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body

    end 

    def parse_json
        request = JSON.parse(self.get_response_body)
    end 

end 