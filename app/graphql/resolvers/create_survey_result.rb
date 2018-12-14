class Resolvers::CreateSurveyResult < GraphQL::Function
	argument :answered, !types.Boolean
	argument :knows_candidate, types.Boolean
	argument :supports_candidate, types.Boolean
	argument :level_of_support, types.Int
	argument :notes, types.String
	argument :voter_record_id, !types.ID

	type Types::SurveyResultType

	def call(_obj, args, _ctx)
		SurveyResult.create!(
			answered: args[:answered],
			notes: args[:notes],
			knows_candidate: args[:knows_candidate],
			supports_candidate: args[:supports_candidate],
			level_of_support: args[:level_of_support],
			voter_record_id: args[:voter_record_id]
		)
	end
end