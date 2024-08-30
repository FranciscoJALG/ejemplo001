class Padre 
    def initialize(nombre)
        @nombre = nombre
    end
    def say_hello
        saludo = "Hola #{@nombre} desde #{self}"
        return saludo
    end
end

class Hijo < Padre
end

saluda1= Padre.new("darth")
puts saluda1.say_hello

saluda2 = Hijo.new("anakin")
puts saluda2.say_hello