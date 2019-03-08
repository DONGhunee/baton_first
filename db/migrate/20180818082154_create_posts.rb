class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :ty
      t.string :title
      t.string :location
      t.text :content
      t.string :tel
      t.text :money
      t.string :sday
      t.string :eday
      t.string :f_wifi
      t.string :f_shower
      t.string :f_parking
      t.string :f_clothes
      t.string :f_rocker
      t.string :user_id
      t.float :lat
      t.float :lng
      t.timestamps null: false
      
    end
  end
end
