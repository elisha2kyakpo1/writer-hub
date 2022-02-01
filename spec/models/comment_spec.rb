require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) { User.create(name: 'elisha') }
  let(:post) { Post.new(author: user, name: 'The first title', content: 'The first post of the year 2022') }
  context 'A post is created by the creator' do
    it 'returns false when event does not have author_id' do
      comment = Comment.new
      comment.author
      comment.content = 'What a nice party'
      expect(comment.valid?).to be false
    end
  #   it 'returns true when comment has an assosciated author or author_id' do
  #     event = Event.new
  #     event.creator
  #     event.Description = 'Hey the party'
  #     event.date = Date.current
  #     expect(event.valid?).to be true
  #   end
  # end
  # context 'validates presence of required fields' do
  #   it 'returns false when event name is not present' do
  #     attendee.name = user
  #     expect(attendee.valid?).to be false
  #   end
  #   it 'returns true when event name is present' do
  #     attendee.name = user
  #     expect(attendee.valid?).to be true
  #   end

  #   it 'returns false when event desription is not present' do
  #     attendee.Description = 'sadkdqj'
  #     attendee.date = Date.current
  #     expect(attendee.valid?).to be false
  #   end
  #   it 'returns true when event desription is present' do
  #     attendee.Description = 'sadkdqj'
  #     expect(attendee.valid?).to be true
  #   end
  #   it 'returns false when event date is not present' do
  #     attendee.date = Date.current
  #     expect(attendee.valid?).to be false
  #   end
  #   it 'returns true when event date is present' do
  #     attendee.date = Date.current
  #     expect(attendee.valid?).to be true
  #   end
  end
end
