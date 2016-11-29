class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :director_id
      t.string :title
      t.string :year

      t.timestamps

    end
  end
end
