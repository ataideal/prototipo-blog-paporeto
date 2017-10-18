class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.string :author
      t.references :category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
