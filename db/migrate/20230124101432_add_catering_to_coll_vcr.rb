class AddCateringToCollVcr < ActiveRecord::Migration[5.1]
  def change
    add_column :coll_vcrs, :catering_id, :integer
  end
end
