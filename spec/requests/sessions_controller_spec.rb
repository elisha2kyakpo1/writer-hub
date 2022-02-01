require 'rails_helper'

RSpec.describe 'Sessions', type: :controller do
  subject do
    User.new(name: 'elisha',
                        password: 'dsfsfsdfsdf')
  end

  describe 'Validations' do
    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Associations' do
    it { should have_many(:posts) }
  end
end
