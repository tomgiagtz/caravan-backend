Types::VoterRecordType = GraphQL::ObjectType.define do 
	name 'VoterRecord'

	field :id, !types.ID
	field :name, !types.String
	field :address, !types.String
	field :party_affiliation, !types.String
	field :phone_number, !types.String
	field :contacted, !types.Boolean
	field :campaign, -> {Types::CampaignType}

end