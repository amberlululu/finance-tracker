class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.references :user, null: false, foreign_key: true
      # it references friend but the table is users and the foreign_key is from that table
      t.references :friend, references: :users, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
