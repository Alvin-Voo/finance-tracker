class ChangeTableStocks < ActiveRecord::Migration[5.2]
  def change
    change_table :stocks do |t|
      t.remove :ticket
      t.string :ticker
    end
  end
end
