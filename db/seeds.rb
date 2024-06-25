# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Mesapp.destroy_all
Mesuxapp.destroy_all
About.destroy_all

puts "Creating mesapp..."
metrovert = {
  name: "MétroVert",
  content: "Issue de mon projet de fin d’études, l’application Métrovert a été entièrement designé par mes soins et a été présentée lors du Demoday du wagon. J’ai également exercé en tant que développeur web Full Stack au sein de mon groupe de travail."
}
legendaryobject = {
  name: "Legendary object",
  content: "Application issue de la semaine Airbnb du Wagon, elle permet de louer des objets légendaires pour une durée déterminée. Elle part du principe de location de particulier à particulier et gère la mise en relation entre locataire et loueur."
}

[metrovert, legendaryobject].each do |attributes|
  mesapp = Mesapp.create!(attributes)
  puts "Created #{mesapp.name}"
end

puts "Creating mesuxapp..."

cashstream_ux = {
  name:"Cashstream",
  content:"Application issue de ma formation d’UX designer délivrée par Google. Elle permet à des professionnels de pouvoir gérer ses comptes bancaires professionnels et personnels sans soucis et d’avoir un œil sur les flux passés et à venir."
}

dura_ux = {
  name:"DuraLex, SedLex",
  content:"Application issue de ma formation avec Google Carrer Certificates et qui permet d’obtenir d’un coup d’œil toute l’actualité juridique qu’elle soit locale, nationale, européenne ou internationale."
}

boulagy_ux = {
  name:"Boulagy",
  content:"Application de livraison de petit déjeuner, permet de trouver n’importe où dans le monde un petit déjeuner français parce que les croissants sont sacrés. Mon premier design avec Google, pas mon design le plus beau mais tout le monde commence quelque part."
}

[cashstream_ux, dura_ux, boulagy_ux].each do |attributes|
  mesuxapp = Mesuxapp.create!(attributes)
  puts "Created #{mesuxapp.name}"
end

# puts "Creating about..."

# front = { name: "Front end", content: "HTML, CSS" }
# javascript = { name: "Javascript", content: "Javascript et ses frameworks Angular, React, Stimulus, Vue" }
# back = { name: "Back end", content: "Ruby on rails, Java et Python" }
# collab = { name: "Collaboration", content: "Git, Github et Notion" }
# methode = { name: "Méthodes", content: "Methode AGILE et SCRUM" }
# database = { name: "Database", content: "SQL, Postgre, SQLite" }
# design = { name: "UX Design", content: "Figma et design responsive" }

# [front, javascript, back, collab, methode, database, design].each do |attributes|
#   about = About.create!(attributes)
#   puts "Created #{about.name}"
# end
puts "Finished!"
