class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.references :user, null: false, foreign_key: true
      t.string :friend_name, null: false
      t.timestamps
    end
  end

end
