class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director_name
      t.string :director_dob
      t.string :actor_name
      t.string :actor_dob
      t.string :genra
      t.string :year

      t.timestamps
    end
  end
end
