class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :dificulty, null: false, default: 0
      t.integer :read_time, null: false
      t.string :title, null: false, limit: 100
      t.text :content, null: false
      t.integer :likes, null: false, default: 0
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
