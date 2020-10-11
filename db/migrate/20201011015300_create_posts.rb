class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title, null: true
      t.text :content, null: true
      t.timestamps
    end
  end
end
