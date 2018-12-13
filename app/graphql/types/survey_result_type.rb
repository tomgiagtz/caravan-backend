Types::SurveyResultType = GraphQL::ObjectType.define do 
	name 'SurveyResult'

	field :id, !types.ID
	field :answered, !types.Boolean
	field :knows_candidate, types.Boolean
	field :supports_candidate, types.Boolean
	field :level_of_support, types.Int
	field :notes, types.String

	field :campaign, -> {!Types::CampaignType}
	field :voter_record, -> {!Types::VoterRecordType}
end
