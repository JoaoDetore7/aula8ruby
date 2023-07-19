module Addressable

    def validate_address
        puts "Logradouro não enviado" unless address[:public_area]
        puts "Numero não enviado" unless address[:number]
        puts "Bairro não enviado" unless address[:district]
        puts "Cidade não enviado" unless address[:city]
        puts "CEP não enviado" unless address[:zip_code]
        puts "UF não enviado" unless address[:federal_state]
    end

    def full_address
        "#{public_area}, #{number}, #{district}, #{city}, #{zip_code}, #{federal_state}"
    end

    def public_area
        address[:public_area]
    end

    def number
        address[:number]
    end

    def district
        address[:district]
    end

    def city
        address[:city]
    end

    def zip_code
        address[:zip_code]
    end

    def federal_state
        address[:federal_state]
    end
end