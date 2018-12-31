class Resolvers::UpdateUserCampaign < GraphQL::Function
	argument :user_id, !types.ID
	argument :campaign_id, !types.ID

	type Types::CampaignType
	def call(_obj, args, _ctx)
		u = User.find(args[:user_id])
		c = Campaign.find(args[:campaign_id])
		if c
			u.campaign_id = args[:campaign_id]
			u.save
		end
		return c
	end
end