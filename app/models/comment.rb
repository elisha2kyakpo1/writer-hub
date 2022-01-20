class Comment < ApplicationRecord
  has_rich_text :content
  belongs_to :author, class_name: 'User'
  belongs_to :post
  validates :content, presence: true
end
