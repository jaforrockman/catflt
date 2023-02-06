class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :Address
      t.string :phone
      t.boolean :status

      t.timestamps
    end
  end
end
