class CreatePaxes < ActiveRecord::Migration
  def change
    create_table :paxes do |t|
      t.string :name
      t.integer :quantity
      t.integer :pax_context_id

      t.timestamps
    end
  end
end
