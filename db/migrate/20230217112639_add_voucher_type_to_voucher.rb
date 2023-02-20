class AddVoucherTypeToVoucher < ActiveRecord::Migration[5.1]
  def change
    add_column :vouchers, :voucher_type_id, :integer
  end
end
