class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :name
      t.text :description
      
      t.timestamps
    end
  end
end
