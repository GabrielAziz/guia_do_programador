class CreatePostsTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :posts_technologies do |t|
      t.references :post, null: false, foreign_key: true
      t.references :technologies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
