class Book < Product
    include Shipping
    include Payment
    include Validatable
    
    attr_accessor :author, :pages

    def initialize(atributes = {})
        super
        @author = atributes[:author]
        @pages = atributes[:pages]
    end

    def display
        super
        puts "Autor desconhecido" unless author
        puts "Autor: #{author}" if author
        puts "Páginas: #{pages}" if pages
    end

    def read
        puts "Lendo o livro"
    end

    def open_page(page = nil)
        if page
            if page > pages
                puts "O livro possui apenas #{pages} paginas"
            else
                puts "Abrindo o livro na página #{page}"
            end
        else
            puts "Abrindo o livro para ler"
        end

    end
end