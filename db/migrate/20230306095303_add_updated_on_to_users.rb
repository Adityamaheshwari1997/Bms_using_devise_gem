class AddUpdatedOnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :ticketdate, :string
  end
end
