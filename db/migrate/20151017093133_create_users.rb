class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :provider
      t.text :uid
      t.text :name
      t.text :email
      t.text :gender
      t.date :date_of_birth
      t.text :location
      t.integer :total_reviews
      t.timestamps null: false
    end
  end
end
