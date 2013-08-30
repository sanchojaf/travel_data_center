class CreatePaxContexts < ActiveRecord::Migration
  def change
    create_table :pax_contexts do |t|
      t.integer :context_rate_id

      t.timestamps
    end
  end
end
