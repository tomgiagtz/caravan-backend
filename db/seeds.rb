# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

camp1 = Campaign.create!(name: "Jon Snow for President", candidate_name: "Jon Snow", candidate_party: "The North", script: "Remembering the north and all its winters")
camp2 = Campaign.create!(name: "Winnie For Pres", candidate_name: "Winnie the Pooh", candidate_party: "Honey Party", script: "Oh geez, honey in every pot")

vr1 = VoterRecord.create!(name:"Arya Stark", address: "1 Winterfell Drive", party_affiliation:"The North", phone_number:"555-812-1234", contacted:'false', campaign_id:camp1.id)

surv1 = SurveyResult.create!(voter_record_id: vr1.id, answered: true, knows_candidate: true, supports_candidate: true, level_of_support: 5, notes: "She feels strong kinship with Jon...")