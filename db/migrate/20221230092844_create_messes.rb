class CreateMesses < ActiveRecord::Migration[5.1]
  def change
    create_table :messes do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
