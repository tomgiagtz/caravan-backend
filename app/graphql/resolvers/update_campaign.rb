CampaignInput = GraphQL::InputObjectType.define do
	name("CampaignInput")
	argument :name, types.String
	argument :candidate_name, types.String
	argument :candidate_party, types.String
	argument :script, types.String
end

class Resolvers::UpdateCampaign < GraphQL::Function
	argument :campaign_id, !types.ID
	argument :input, !CampaignInput
	

	type Types::CampaignType

	def call(_obj, args, _ctx)
		c = Campaign.find(args[:campaign_id])
		c.update(args[:input].to_h)
		return c
	end
end

