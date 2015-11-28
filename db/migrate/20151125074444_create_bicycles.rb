class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :name
      t.string :photo
      t.string :style
      t.float :price

      t.timestamps null: false
    end
  end
end
