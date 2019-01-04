# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

camp1 = Campaign.create!(name: "Jon Snow for President", candidate_name: "Jon Snow", candidate_party: "The North", script: "Remembering the north and all its winters \n I'd like to speak to you today about Jon Snow and your feelings towards him. \n Have you heard of Jon? \n - What would change your opinion of him? \n + Would you consider joining his Caravan?")
camp2 = Campaign.create!(name: "Winnie For Pres", candidate_name: "Winnie the Pooh", candidate_party: "Honey Party", script: "Oh geez, honey in every pot")

vr1 = VoterRecord.create!(name:"Arya Stark", address: "1 Winterfell Drive", party_affiliation:"The North", phone_number:"555-812-1234", contacted:'false', campaign_id:camp1.id)

surv1 = SurveyResult.create!(voter_record_id: vr1.id, answered: true, knows_candidate: true, supports_candidate: true, level_of_support: 5, notes: "She feels strong kinship with Jon...")\


f_names = ['Arya', 'Jorah', 'Tyrion', 'Jaime', 'Petyr', 'Theon', 'Rob', 'Eddard', 'Cersei', 'Sansa']
l_names = ['Stark', 'Snow', 'Lannister', 'Greyjoy', 'Targaryen']
parties = ['The North', 'Iron Throne', 'Faceless Men']
streets = ["King's Landing Lane", "Winterfell Drive", "Westoros Way", "Shame Street"]

10.times do 
	h = {
		name: f_names.sample + " " + l_names.sample,
		address: (1..100).to_a.sample.to_s + streets.sample,
		party_affiliation: parties.sample,
		phone_number: '555-555-5555',
		campaign_id: camp1.id,
		contacted: false
	}

	VoterRecord.create!(h)

end