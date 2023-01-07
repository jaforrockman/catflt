class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :bd
      t.string :name
      t.integer :rank_id
      t.integer :catering_id

      t.timestamps
    end
  end
end
