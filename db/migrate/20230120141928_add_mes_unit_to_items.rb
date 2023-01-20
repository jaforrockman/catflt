class AddMesUnitToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :mes_unit, :string
  end
end
