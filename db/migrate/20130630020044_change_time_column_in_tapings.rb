class ChangeTimeColumnInTapings < ActiveRecord::Migration
  def change
    :tapings, :time, :date
  end
end
