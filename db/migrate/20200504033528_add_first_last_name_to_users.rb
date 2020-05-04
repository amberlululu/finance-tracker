class AddFirstLastNameToUsers < ActiveRecord::Migration[6.0]
  def change
    # 3 params table, item, type
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string

  end
end
