class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.integer :item_id
      t.decimal :qty
      t.references :voucher, foreign_key: true

      t.timestamps
    end
  end
end
