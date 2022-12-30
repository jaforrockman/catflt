class AddScaleToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :offr_scale, :decimal
    add_column :items, :am_scale, :decimal
    add_column :items, :modc_scale, :decimal
    add_column :items, :civ1_scale, :decimal
    add_column :items, :civ2_scale, :decimal
  end
end
