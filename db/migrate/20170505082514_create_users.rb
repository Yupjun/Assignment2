class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :nickname
      t.string :gender
      t.string :campus
      t.datetime :birth_date

      t.timestamps null: false
    end
  end
end
