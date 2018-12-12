Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createCampaign, function: Resolvers::CreateCampaign.new
  field :createVoterRecord, function: Resolvers::CreateVoterRecord.new
  
end
