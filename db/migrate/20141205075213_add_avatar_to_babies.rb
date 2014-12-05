class AddAvatarToBabies < ActiveRecord::Migration
  def change
    add_column :babies, :avatar, :string
  end
end
