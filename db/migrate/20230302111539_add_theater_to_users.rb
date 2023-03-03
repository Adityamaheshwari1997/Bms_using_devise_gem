class AddTheaterToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :Users, :theater,foreign_key: true
  end
end
