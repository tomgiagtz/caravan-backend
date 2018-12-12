class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :candidate_name
	  t.string :candidate_party
	  t.text :script

      t.timestamps
    end
  end
end
