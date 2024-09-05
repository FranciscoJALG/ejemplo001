class ContadorDePalabras
  attr_accessor :texto
  
  # Inicializar con una cadena de texto
  def initialize(texto)
    @texto = texto
  end

  # Método para contar palabras repetidas
  def contar_palabras_repetidas
    conteo_palabras = Hash.new(0)
    
    # Separar el texto en palabras y contar las apariciones
    palabras = @texto.downcase.split
    palabras.each { |palabra| conteo_palabras[palabra] += 1 }
    
    conteo_palabras
  end
   #metodo de la tarea 3
    def cambiar_texto (texto)
        @texto = texto
    end
end

contador = ContadorDePalabras.new("")
bandera = true
while bandera = true
  puts "Ingrese una cadena"
  texto = $stdin.gets.chomp
  contador.cambiar_texto(texto)
  resultado = contador.contar_palabras_repetidas
  resultado.each do |palabra,cantidad|
    puts "#{palabra}: #{cantidad}"
  end
  puts "Continuar? s/n:"
  c:$stdin.gets.chomp
  if c != 's'
    bandera = false
  end
end

