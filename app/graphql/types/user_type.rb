Types::UserType = GraphQL::ObjectType.define do
	name 'User'
  
	field :id, !types.ID
	field :name, !types.String
	field :email, !types.String
	field :current_campaign_id, types.ID
end