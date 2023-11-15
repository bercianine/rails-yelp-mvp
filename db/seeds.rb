# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
nino_cucina = { name: 'Nino Cucina', address: 'Rua Jerônimo da Veiga, 30, Jardim Europa', phone_number: '+55 (11) 3368-6863', category: 'italian' }
forno = { name: 'Forno da Pino', address: 'Rua Jerônimo da Veiga, 75, Jardim Europa', phone_number: '+55 (11) 3368-6863', category: 'italian' }
makoto =  { name: 'Makoto', address: 'Rua Haddock Lobo, 1626, Jardins', phone_number: '+55 (11) 3198-8200', category: 'japanese' }
le_jazz = { name: 'Le Jazz', address: 'R. Dr. Melo Alves, 734, Jardins', phone_number: '+55 (11) 3062-9797', category: 'french' }
pappagallo = { name: 'Pappagallo', address: 'Alameda Jaú, 1372, Jardins', phone_number: '+55 (11) 3898-6503', category: 'italian' }

[nino_cucina, forno, makoto, le_jazz, pappagallo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
