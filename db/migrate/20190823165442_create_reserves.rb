class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.string :user_name
      t.string :movie_name
      t.string :movie_title

      t.timestamps
    end
  end
end
