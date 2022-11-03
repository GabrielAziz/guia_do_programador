class AddLanguageToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :language, null: false, foreign_key: true
  end
end
