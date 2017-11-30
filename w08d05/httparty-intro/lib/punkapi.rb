require 'httparty'
# include HTTParty

# response = HTTParty.get('https://api.punkapi.com/v2/beers')

# puts response.headers.inspect
# puts response.body
# puts response.code
# puts response.message

class PunkApiCall
    include HTTParty
    base_uri 'https://api.punkapi.com/v2'

    def all_beers
        self.class.get('/beers') #as this is an instance method, self.class is needed to access the class
    end

    def all_of_type(category)
        all_beers.parsed_response.map { |beer| beer[category] }
    end

    def all_of_nested_type(category, sub_category)
      all_beers.parsed_response.map { |beer| beer[category][sub_category]  }
    end

end