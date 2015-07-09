countries = ["Chad", "Cuba", "Greenland", "Iraq", "Mali", "Oman", "India"]
countries<<("Fiji")
countries.insert(4, "Iran")
countries.delete_at(7)
countries.reverse!
#countries[2].replace("Togo")
countries.each do |country|
  country.gsub!("Greenland", "Togo")
end
countries<<('Laos')
countries.reverse!
countries.insert(0, "Peru")
puts countries




 # if country.length==4
  #  puts "#{country} is a four lettered country."
  #end 

