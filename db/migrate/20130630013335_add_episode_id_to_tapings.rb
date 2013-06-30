class AddEpisodeIdToTapings < ActiveRecord::Migration
  def change
    add_column :tapings, :episode_id, :integer
  end
end
