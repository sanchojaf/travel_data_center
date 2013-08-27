class CreateHotelInfos < ActiveRecord::Migration
  def change
    create_table :hotel_infos do |t|
      t.date :when_built
      t.string :hotel_status
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
