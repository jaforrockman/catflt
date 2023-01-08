class CreateIvNums < ActiveRecord::Migration[5.1]
  def change
    create_table :iv_nums do |t|
      t.integer :i_num

      t.timestamps
    end
  end
end
