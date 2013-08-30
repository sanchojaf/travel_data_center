class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :zipcode
      t.string :state_name
	  t.string :locate_in      
      t.integer :hotel_info_id
      t.timestamps
    end
  end
end
