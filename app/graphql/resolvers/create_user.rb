class Resolvers::CreateUser < GraphQL::Function
	AuthProviderInput = GraphQL::InputObjectType.define do
	  name 'AuthProviderSignupData'
  
	  argument :email, Types::AuthProviderEmailInput
	end
  
	argument :name, !types.String
	argument :campaign_id, types.ID
	argument :authProvider, !AuthProviderInput
  
	type Types::UserType
  
	def call(_obj, args, _ctx)
	  User.create!(
		name: args[:name],
		email: args[:authProvider][:email][:email],
		password: args[:authProvider][:email][:password],
		campaign_id: args[:campaign_id]
	  )
	end
end