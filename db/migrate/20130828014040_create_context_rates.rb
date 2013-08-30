class CreateContextRates < ActiveRecord::Migration
  def change
    create_table :context_rates do |t|
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :rate_id

      t.timestamps
    end
  end
end
