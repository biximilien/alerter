class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|

      # Who triggered it
      t.integer :source_id,   null: false
      t.string  :source_type, null: false

      # Who receives the alert
      t.integer :target_id,   null: false
      t.string  :target_type, null: false

      # message
      t.string  :message,     null: false, default: ''

      # (Optional) Associated ressource
      t.integer :object_id
      t.string  :object_type

      t.timestamps
    end
  end
end
