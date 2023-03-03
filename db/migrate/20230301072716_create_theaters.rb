class CreateTheaters < ActiveRecord::Migration[7.0]
  def change
    create_table :theaters do |t|
      t.string :name
      t.integer :theater_id
      t.integer :screen_id
      t.integer :movie_id
      t.timestamps
    end
  end
end
