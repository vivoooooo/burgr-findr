class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :burger_name
      t.text :rating
      t.text :review 
      t.text :price
      t.timestamps null: false
    end
  end
end
