class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :surname
      t.string :status
      t.string :group
      t.string :photo

      t.timestamps
    end
  end
end
