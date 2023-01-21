class CreateCollVcrs < ActiveRecord::Migration[5.1]
  def change
    create_table :coll_vcrs do |t|
      t.integer :company_id
      t.date :coll_date
      t.integer :invoice_num
     

      t.timestamps
    end
  end
end
