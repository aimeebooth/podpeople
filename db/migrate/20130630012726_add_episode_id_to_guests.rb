class AddEpisodeIdToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :episode_id, :integer
  end
end
