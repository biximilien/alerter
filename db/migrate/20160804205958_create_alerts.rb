class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|

      t.integer :source_id
      t.string  :source_type
      t.string  :source_url

      t.integer :target_id
      t.string  :target_type
      t.string  :target_url

      t.string  :message

      t.timestamps
    end
  end
end
