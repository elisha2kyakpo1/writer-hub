class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :author_id
      t.integer :post_id
      t.references :commentor, foreign_key: { to_table: :comments }

      t.timestamps
    end
    add_index :comments, :post_id
    add_foreign_key :comments, :users, column: :author_id
  end
end
