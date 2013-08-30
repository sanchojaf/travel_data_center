class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :alternative_phone
      t.string :email
      t.string :fax
      t.string :web
      t.string :google_map_url
      t.integer :hotel_info_id

      t.timestamps
    end
  end
end
