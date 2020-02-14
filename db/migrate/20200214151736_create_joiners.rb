class CreateJoiners < ActiveRecord::Migration[5.0]
  def change
    create_table :joiners do |t|
      t.integer :heroine_id
      t.integer :power_id

      t.timestamps
    end
  end
end
