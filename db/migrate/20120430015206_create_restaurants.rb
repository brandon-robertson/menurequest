class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :city
      t.string :zipcode
      t.string :phone
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
