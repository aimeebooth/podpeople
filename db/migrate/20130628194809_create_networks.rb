class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
