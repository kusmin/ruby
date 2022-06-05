print "digite um numero: "
numero = gets.to_i

begin
  resultado = 100/ numero
rescue
    puts "numero digitado invalido!" 
    exit 
end

puts "100/#{numero} é #{resultado}"