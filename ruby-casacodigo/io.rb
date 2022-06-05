print "Escreva um texto: "
texto = gets
File.open("caelum.txt", "w") do |f|
    f << texto
end

Dir.entries('caelum').each do |file_name|
    idea = File.read(file_name)
    puts idea
end

