class AddUuidsToTables < ActiveRecord::Migration[5.2]
  def change
	tables = ['campaigns', 'survey_results', 'voter_records']
	tables.each do |table|
		add_column table, :uuid, :uuid, default: "gen_random_uuid()", null: false
	end
  end
end
