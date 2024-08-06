class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating

      t.timestamps
      # created_at
      # updated_at
    end
  end
end
