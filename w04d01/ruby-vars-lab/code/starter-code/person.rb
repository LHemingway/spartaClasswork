class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 25

    end

    def children
        # create children array here
        children = ["Luke", "Abbas", "Liam", "James"]

    end

    def address

        # create address hash here
        address = {
            house_number: 121,
            street: "Greenside",
            town: "Tarn",
            county: "YORKSHA",
            postcode: "s729an",
            email_addresses: ["Luke@mail.com", "Abbass@mail.com"]
        }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"       

    end

end