class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.integer :age, null: false
      t.string :religion
      t.string :country
      t.string :status
      t.boolean :image, default: false
      t.string :email, null: false
      t.string :password, null: false

      t.timestamps null: false
    end
  end
end
