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
end

# Solicitar cadena al usuario
puts "Introduzca una cadena:"
texto = gets.chomp

# Crear el objeto y contar las palabras repetidas
contador = ContadorDePalabras.new(texto)
resultado = contador.contar_palabras_repetidas

# Imprimir el resultado
resultado.each { |palabra, cantidad| puts "#{palabra}: #{cantidad}" }
