Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createCampaign, function: Resolvers::CreateCampaign.new
  field :updateCampaign, function: Resolvers::UpdateCampaign.new


  field :createVoterRecord, function: Resolvers::CreateVoterRecord.new
  field :updateVoterRecord, function: Resolvers::UpdateVoterRecord.new
  
  field :createSurveyResult, function: Resolvers::CreateSurveyResult.new
  
end
