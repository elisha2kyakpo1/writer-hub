class Post < ApplicationRecord
  has_rich_text :body
  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy
  validates :name, presence: true
end
