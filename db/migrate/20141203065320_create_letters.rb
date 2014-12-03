class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.text :entry
      t.date :pub_date

      t.timestamps
    end
  end
end
