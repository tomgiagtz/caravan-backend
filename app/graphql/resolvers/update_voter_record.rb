VoterRecordInput = GraphQL::InputObjectType.define do
	name("VoterRecordInput")
	argument :name, !types.String
	argument :address, !types.String
	argument :party_affiliation, !types.String
	argument :phone_number, !types.String
	argument :contacted, !types.Boolean
end

class Resolvers::UpdateVoterRecord < GraphQL::Function
	argument :voter_record_id, !types.ID
	argument :input, !VoterRecordInput
	

	type Types::VoterRecordType

	def call(_obj, args, _ctx)
		c = VoterRecord.find(args[:voter_record_id])
		c.update(args[:input].to_h)
		return c
	end
end
