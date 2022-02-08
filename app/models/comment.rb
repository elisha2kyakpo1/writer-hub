class Comment < ApplicationRecord
  has_rich_text :content
  belongs_to :author, class_name: 'User'
  belongs_to :post
  belongs_to :parent, class_name: 'Comment', optional: true
  has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
  validates :content, presence: true
end
