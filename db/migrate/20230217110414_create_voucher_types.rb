class CreateVoucherTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :voucher_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
