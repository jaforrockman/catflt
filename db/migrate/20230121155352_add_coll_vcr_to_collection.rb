class AddCollVcrToCollection < ActiveRecord::Migration[5.1]
  def change
    add_column :collections, :coll_vcr_id, :integer
  end
end
