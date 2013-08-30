class CreateHotelInfos < ActiveRecord::Migration
  def change
    create_table :hotel_infos do |t|
      t.date :when_built
      t.string :hotel_status
      t.string :latitude
      t.string :longitude
      t.string :category
      t.string :property_type
      t.string :segment
      t.timestamps
    end
  end
end
