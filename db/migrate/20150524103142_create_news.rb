class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :photo
      t.text :text

      t.timestamps #created_at, #updated_at
   end
  end
end
