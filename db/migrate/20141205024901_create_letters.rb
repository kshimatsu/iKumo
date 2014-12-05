class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :title
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
