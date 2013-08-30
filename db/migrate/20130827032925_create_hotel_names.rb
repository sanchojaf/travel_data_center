class CreateHotelNames < ActiveRecord::Migration
  def change
    create_table :hotel_names do |t|
      t.string :name
      t.string :hotel_short_name
      t.string :index_name
      t.string :permalink
      t.integer :hotel_info_id      
      t.timestamps
    end
  end
end
