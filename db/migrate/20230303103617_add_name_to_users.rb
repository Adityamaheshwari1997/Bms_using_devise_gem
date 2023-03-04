class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :FirstName, :string
    add_column :users, :LastName, :string
    add_column :users, :Username, :string
  end
end
