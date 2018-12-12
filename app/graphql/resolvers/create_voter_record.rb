class Resolvers::CreateVoterRecord < GraphQL::Function
	argument :campaignId, !types.ID
	argument :name, !types.String
	argument :address, !types.String
	argument :partyAffiliation, !types.String
	argument :phoneNumber, !types.String
	argument :contacted, !types.Boolean

	type Types::VoterRecordType

	def call(_obj, args, _ctx)
		Vote.create!(
			name: args[:name],
			address: args[:address],
			party_affiliation: args[:partyAffiliation],
			phone_number: args[:phoneNumber],
			contacted: args[:contacted],
			campaign_id: args[:campaignId]
		)
	end
end