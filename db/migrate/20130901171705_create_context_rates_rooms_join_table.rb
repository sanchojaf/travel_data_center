class CreateContextRatesRoomsJoinTable < ActiveRecord::Migration
  def change
    create_table :context_rates_rooms, :id =>  false do |t|
      t.integer :context_rate_id
      t.integer :room_id      
    end
  end
end
