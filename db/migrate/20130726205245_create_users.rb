class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.text :name
    	t.text :uid
    	t.text :provider

      t.timestamps
    end
  end
end
