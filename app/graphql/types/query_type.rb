Types::QueryType = GraphQL::ObjectType.define do
	name "Query"
	# Add root-level fields here.
	# They will be entry points for queries on your schema.
	field :allCampaigns, !types[Types::CampaignType] do
		resolve -> (obj, args, ctx) {
			Campaign.all
		}
	end

	field :allVoterRecords, !types[Types::VoterRecordType] do 
		resolve -> (obj, args, ctx) {
			VoterRecord.all
		}
	end
end
