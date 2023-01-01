class CreateVouchers < ActiveRecord::Migration[5.1]
  def change
    create_table :vouchers do |t|
      t.string :name
      t.integer :mess_id

      t.timestamps
    end
  end
end
