class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.integer :hotel_info_id
      t.timestamps
    end
  end
end
