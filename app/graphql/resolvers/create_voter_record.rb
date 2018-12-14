class Resolvers::CreateVoterRecord < GraphQL::Function
	argument :campaign_id, !types.ID
	argument :name, !types.String
	argument :address, !types.String
	argument :party_affiliation, !types.String
	argument :phone_number, !types.String
	argument :contacted, !types.Boolean

	type Types::VoterRecordType

	def call(_obj, args, _ctx)
		VoterRecord.create!(
			name: args[:name],
			address: args[:address],
			party_affiliation: args[:party_affiliation],
			phone_number: args[:phone_number],
			contacted: args[:contacted],
			campaign_id: args[:campaign_id]
		)
	end
end