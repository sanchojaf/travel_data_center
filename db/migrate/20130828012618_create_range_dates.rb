class CreateRangeDates < ActiveRecord::Migration
  def change
    create_table :range_dates do |t|
      t.date :start
      t.date :end
      t.integer :season_id

      t.timestamps
    end
  end
end
