class CreateScales < ActiveRecord::Migration[5.1]
  def change
    create_table :scales do |t|
      t.string :scale_type
      t.decimal :qty
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
