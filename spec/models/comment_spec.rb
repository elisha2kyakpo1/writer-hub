require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) { User.create(name: 'elisha') }
  let(:post) { Post.new(author: user, name: 'The first title', body: 'The first post of the year 2022') }
  context 'A comment is created by the creator' do
    it 'returns false when comment does not have author_id' do
      comment = Comment.new
      comment.author
      comment.content = 'What a nice party'
      expect(comment.valid?).to be false
    end
    it 'returns true when comment has an assosciated author or author_id' do
      comment = Comment.new
      comment.author = user
      comment.content = 'Hey the party'
      comment.post = post
      expect(comment.valid?).to be true
    end
  end
  context 'validates presence of required fields' do
    it 'returns false when comment content is present' do
      author.name = user
      expect(author.valid?).to be true
    end
    it 'returns true when comment content is not present' do
      comment = Comment.new
      comment.author = user
      comment.content = ''
      comment.post = post
      expect(comment.valid?).to be false
    end

    it 'returns true when post is not present' do
      post.body = ''
      expect(post.valid?).to be false
    end
  end
end
