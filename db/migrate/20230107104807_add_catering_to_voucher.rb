class AddCateringToVoucher < ActiveRecord::Migration[5.1]
  def change
    add_column :vouchers, :catering_id, :integer
  end
end
