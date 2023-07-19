require './modules/shipping'
require './modules/payment'
require './modules/validatable'
require './modules/addressable'
require './classes/product'
require './classes/book'
require './classes/customer'
require './classes/electronic'


address = {
  public_area: "Dorival bueno",
  number: "110",
  district: "Morro do ouro",
  zip_code: "13848-310",
  city: "Mogi Guaçu",
  federal_state: "SP"

}

customer = Customer.new({
  first_name: "João",
  last_name: "Detore",
  document: "123.456.789-10",
  email: "joao.detore@fatec.com",
  address: address
})

customer.show