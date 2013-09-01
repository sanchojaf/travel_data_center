class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :name
      t.integer :range_date_id
      t.timestamps
    end
  end
end
