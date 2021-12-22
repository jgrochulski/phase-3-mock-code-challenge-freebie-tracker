puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "Hoodie", value: 45, dev: Dev.find_by(name: "Rick"), company: Company.find_by(name: "Google"))
Freebie.create(item_name: "Baseball Cap", value: 20, dev: Dev.find_by(name: "Morty"), company: Company.find_by(name: "Facebook"))
Freebie.create(item_name: "T-Shirt", value: 25, dev: Dev.find_by(name: "Mr. Meseeks"), company: Company.find_by(name: "Dunder Mifflin"))
Freebie.create(item_name: "Keychain", value: 5, dev: Dev.find_by(name: "Gazorpazop"), company: Company.find_by(name: "Enron"))
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
