class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :inum
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
