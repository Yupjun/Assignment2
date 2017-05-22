class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :category_id
      t.string :campus
      t.string :title
      t.text :body
      t.integer :user_id
      t.string :nickname

      t.timestamps null: false
    end
  end
end
