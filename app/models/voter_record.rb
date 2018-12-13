class VoterRecord < ApplicationRecord
  belongs_to :campaign
  has_many :survey_results
end
