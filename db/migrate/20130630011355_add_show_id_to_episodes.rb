class AddShowIdToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :show_id, :integer
  end
end
