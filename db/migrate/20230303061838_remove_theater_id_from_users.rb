class RemoveTheaterIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :theater, null: false, foreign_key: true
  end
end
