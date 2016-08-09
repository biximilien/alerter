class CreateModelMocks < ActiveRecord::Migration[5.0]
  def change
    create_table :model_mocks do |t|
      t.string :name
      t.text :content
      t.boolean :stuffable

      t.timestamps
    end
  end
end
