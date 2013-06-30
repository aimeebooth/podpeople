class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.text :name
      t.integer :show_id
      
      t.timestamps
    end
  end
end
