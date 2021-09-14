class CreateIllustrations < ActiveRecord::Migration[6.1]
  def change
    create_table :illustrations do |t|
      t.string :content, null: false

      t.timestamps
    end
  end
end
