class AddUserIdToPets < ActiveRecord::Migration[8.0]
  def change
    add_reference :pets, :user, null: true, foreign_key: true
  end
end
