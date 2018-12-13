class CreateVoterRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :voter_records do |t|
      t.string :name
      t.string :address
      t.string :party_affiliation
      t.string :phone_number
      t.boolean :contacted
	  t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
