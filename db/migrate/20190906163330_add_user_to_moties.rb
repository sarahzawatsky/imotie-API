class AddUserToMoties < ActiveRecord::Migration[5.2]
  def change
    add_reference :moties, :user, foreign_key: true
  end
end
