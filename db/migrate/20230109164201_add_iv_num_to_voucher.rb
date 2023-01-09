class AddIvNumToVoucher < ActiveRecord::Migration[5.1]
  def change
    add_column :vouchers, :iv_numb, :integer
  end
end
