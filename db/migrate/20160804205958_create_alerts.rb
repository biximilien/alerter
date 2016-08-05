class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|

      # Who triggered it
      t.integer :source_id
      t.string  :source_type
      t.string  :source_url

      # Who receives the alert
      t.integer :target_id
      t.string  :target_type
      t.string  :target_url

      # Displayed message
      t.string  :message

      # (Optional) Associated ressource
      t.integer :object_id
      t.string  :object_type
      t.string  :object_url

      t.timestamps
    end
  end
end
