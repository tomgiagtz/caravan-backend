class Resolvers::UpdateUserCampaign < GraphQL::Function
	argument :user_id, !types.ID
	argument :campaign_id, !types.ID

	def call(_obj, args, _ctx)
		u = User.find(:user_id)
		c = Campaign.find(:campaign_id)
		if c
			u.current_campaign_id = :campaign_id
			u.save
		end
		return u
	end
end