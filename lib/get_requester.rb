# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  attr_accessor :URL #reader/writer method for class to be able to call and edit URL instance

  def initialize(url) #initialize the Getrequester class by passing in URL

    @url = url

  end 

  
  def get_response_body #instance method on the GetRequester Class

    #copied & pasted from previous lab
    #essential this is the "vocabulary" to use to be able to make a request to the URL provided on initialization
    #also returns the request body 

    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body

    end 

    def parse_json #instance method that allows to convern JSON returned from get_response_body in Ruby data data structure
        JSON.parse(self.get_response_body)
    end 

end 