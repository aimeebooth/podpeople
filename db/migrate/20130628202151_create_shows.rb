class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.text :name
      t.text :description
      t.references :network

      t.timestamps
    end
  end
end
