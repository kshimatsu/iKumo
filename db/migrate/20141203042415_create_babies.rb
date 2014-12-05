class CreateBabies < ActiveRecord::Migration
  def change
    create_table :babies do |t|
      t.string :name
      t.date :birthday
      t.string :gender
      t.integer :weight
      t.integer :length


      t.timestamps
    end
  end
end
