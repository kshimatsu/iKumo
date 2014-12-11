class AddUserToBaby < ActiveRecord::Migration
  def change
    add_reference :babies, :user, index: true
  end
end
