class CreateTapings < ActiveRecord::Migration
  def change
    create_table :tapings do |t|
      t.date :date
      t.text :time

      t.timestamps
    end
  end
end
