require 'httparty'
require 'json'

class PostcodeApi
    include HTTParty
    base_uri 'https://api.postcodes.io'

    def single_postcode_search(postcode)
        self.class.get("/postcodes/#{postcode}").parsed_response
    end

    def multiple_postcodes_search(postcode_array)
        body = {
            postcodes: postcode_array
        }
        self.class.post("/postcodes", {body: body}).parsed_response
    end
end

postcode = PostcodeApi.new
puts postcode.single_postcode_search("HX38LG")
puts postcode.multiple_postcodes_search(['HX38LG', 'E51LH', 'HG31DT'])