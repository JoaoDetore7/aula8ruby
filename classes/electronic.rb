class Electronic < Product
    include Shipping
    include Payment
    include Validatable
    
    attr_accessor :brand, :model, :power

    def initialize(atributes = {})
        super
        @brand = atributes[:brand]
        @model = atributes[:model]
        @power = false
    end

    def display
        super
        puts "Marca desconhecida" unless brand
        puts "Marca: #{brand}" if brand
        puts "Modelo: #{model}" if model
    end

    def turn_on
        if power
            puts "O aparelho já está ligado!"
        else
            @power = true
            puts "Aparelho ligado!"
        end

    end

    def turn_off
        if power 
            @power = false
            puts "Aparelho desligado!"
        else
            puts "Aparelho já está desligado!"
        end
    end

    def turn_on_security_mode
        turn_on
        puts "Aparelho ligado em modo de segurança!"
    end

    def start_sale
        super
        puts "Produto de valor alto, atenção."
    end

end