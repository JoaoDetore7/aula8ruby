class Customer

    include Validatable
    include Addressable

    attr_accessor :first_name, :last_name ,:email, :document, :address, :credit_card

    def initialize(atributes = {})
        @first_name = atributes[:first_name]
        @last_name = atributes[:last_name]
        @email = atributes[:email]
        @document = atributes[:document]
        @address = atributes[:address]
        @credit_card = atributes[:credit_card]

        validate_atributes
    end

    def show
        puts "Nome: #{first_name}"
        puts "Sobrenome: #{last_name}"
        puts "CPF: #{document}"
        puts "Email: #{email}"
        puts "Endereço: #{full_address}"
    end


    private

    def validate_atributes
        puts "Nome não foi enviado" unless first_name
        puts "Sobrenome não foi enviado" unless last_name
        puts "CPF não foi enviado" unless document
        puts "Email não foi enviado" unless email
        puts "CPF é inválido" if document && invalid_document?(document)
        puts "Email é inválido" if email && invalid_email?(email)
    end


end