# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
photos=["http://globe-views.com/dcim/dreams/bicycle/bicycle-04.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIfTAzrNg8nSrKlSi4Gh7OQVot0zh-hoZXQzw41YZJ3YoN1AJixQ",
"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTsjupejE09e1sZDjOCYfHJSZqWOVDox-wcU1i4s5eouwE8HzjS",
"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRCbjwHRDf0vpvwvJqhEG7aDzPwuxeehE5EZxkMW7dbrY5hvjlNtg"]
20.times do 
  Bicycle.create(name: (0...8).map { (65 + rand(26)).chr }.join, style: (0...8).map { (65 + rand(26)).chr }.join, price: rand(11.2...76.9).round(1), photo: photos[rand(0..3)])
end
