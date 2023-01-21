class CreateCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :collections do |t|
      t.integer :item_id
      t.decimal :qty

      t.timestamps
    end
  end
end
