class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :body
      t.integer :author_id
      t.timestamps
    end
    add_index :posts, :author_id
  end
end
