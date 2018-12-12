# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

camp1 = Campaign.create!(name: "Jon Snow for President", candidate_name: "Jon Snow", candidate_party: "The North", script: "Remembering the north and all its winters")

vr1 = VoterRecord.create!(name:"Arya Start", address: "1 Winterfell Drive", party_affiliation:"The North", phone_number:"555-812-1234", contacted:'false', campaign_id:camp1.id)