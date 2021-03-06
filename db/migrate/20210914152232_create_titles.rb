class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.string :content,          null: false
      t.string :user_name,        null: false
      t.integer :vote_quantity
      t.references :illustration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
