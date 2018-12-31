class Campaign < ApplicationRecord
	has_many :voter_records
	has_many :users
	has_many :survey_results, through: :voter_records
end
