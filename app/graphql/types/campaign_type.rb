Types::CampaignType = GraphQL::ObjectType.define do
	name 'Campaign'

	field :id, !types.ID
	field :name, !types.String
	field :candidate_name, !types.String
	field :candidate_party, !types.String
	field :script, !types.String
	field :voter_records, -> { !types[Types::VoterRecordType] }


end