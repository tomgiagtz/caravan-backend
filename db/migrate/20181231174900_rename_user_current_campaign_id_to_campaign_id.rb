class RenameUserCurrentCampaignIdToCampaignId < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :current_campaign_id, :campaign_id
  end
end
