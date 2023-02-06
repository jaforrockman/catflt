class AddExtRvToCollVcr < ActiveRecord::Migration[5.1]
  def change
    add_column :coll_vcrs, :ext_rv, :integer
  end
end
