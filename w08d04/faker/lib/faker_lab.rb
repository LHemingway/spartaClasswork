require "faker"
require "date"

class FakerLab  
  
  def self.user
    {
      name: Faker::Name.unique.name,
      date: Faker::Date.unique.birthday(18, 95),
      phone_number: Faker::PhoneNumber.unique.phone_number,
      email: Faker::Internet.free_email,
      address: {
        country: Faker::Address.country,
        city: Faker::Address.city,
        street: Faker::Address.street_name,
        addresses: Faker::Address.street_address,
        zip: Faker::Address.zip_code
      }
    }
  end

end