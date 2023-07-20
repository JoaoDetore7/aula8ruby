#exercicio1
string = "Eu amo programar em Python"
puts string.gsub("Python","Ruby")

#exercicio2
if string.include?("programar") 
    puts "Contém programar!"
end

#exercicio3
string2 = "Loren ipsun dolor sit amet"
puts string2.reverse.upcase

#exercicio4
string3 = "Ruby,Python,Java,Javascript"
puts string3.split(",")

#exercicio5
string4 = "Hello"
string5 = "World"
puts string4.concat(", ",string5)

#exercicio6
telefone = gets.chomp

def validate_telefone(telefone)
    /\(\d{2}\)\s?\d{5}-?\d{4}/.match(telefone)
end 

    if telefone && validate_telefone(telefone)
        puts "Telefone válido"
    else
        puts "Telefone inválido"
    end

