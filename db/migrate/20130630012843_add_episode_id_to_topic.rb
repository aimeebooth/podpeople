class AddEpisodeIdToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :episode_id, :integer
  end
end
