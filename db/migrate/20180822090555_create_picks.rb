class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.string :post_id, index: true, foreign_key: true
      t.string :user_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
