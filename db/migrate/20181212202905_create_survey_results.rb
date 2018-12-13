class CreateSurveyResults < ActiveRecord::Migration[5.2]
  def change
    create_table :survey_results do |t|
      t.boolean :answered
      t.boolean :knows_candidate
      t.boolean :supports_candidate
      t.integer :level_of_support
	  t.string :notes
	  t.references :voter_record, foreign_key: true

      t.timestamps
    end
  end
end
