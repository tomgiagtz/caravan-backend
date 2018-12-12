class Resolvers::CreateCampaign < GraphQL::Function
	argument :name, !types.String
	argument :candidate_name, !types.String
	argument :candidate_party, !types.String
	argument :script, !types.String

	type Types::CampaignType

	def call(_obj, args, _ctx)
		Campaign.create!(
		name: args[:name],
		candidate_name: args[:candidate_name],
		candidate_party: args[:candidate_party],
		script: args[:script])
	end
end