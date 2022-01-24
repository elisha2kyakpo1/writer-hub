
# require './rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with valid attributes' do
    expect(Post.new).to be_valid
  end

  it 'is not valid without a title' do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end

  context 'validations' do
    before { create(:post) }

    context 'presence' do
      it { should validate_presence_of :name }
    end

    context 'uniqueness' do
      it { should validate_uniqueness_of :name }
    end
  end

  context 'associations' do
    it { should have_many(:comments).class_name('Comment') }
  end
end
