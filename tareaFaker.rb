require 'faker'

cantantes = Array.new(100) do
  {
    nombre: Faker::Name.name,
    correo: Faker::Internet.email,
    domicilio: Faker::Address.full_address
  }
end

cantantes.each.with_index(1) do |cantante, index|
  puts "Cantante #{index}:"
  puts "Nombre: #{cantante[:nombre]}"
  puts "Correo: #{cantante[:correo]}"
  puts "Domicilio: #{cantante[:domicilio]}"
  puts "-" * 40
end
