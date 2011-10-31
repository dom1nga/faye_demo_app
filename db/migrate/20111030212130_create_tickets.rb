class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.integer :top
      t.integer :left

      t.timestamps
    end
  end
end
