require 'rails_helper'

RSpec.describe CommentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/comments').to route_to('comments#index')
    end

    it 'routes to #new' do
      expect(get: '/comments/new').to route_to('comments#new')
    end

    it 'routes to #show' do
      expect(get: '/comments/1').to route_to('comments#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/comments/1/edit').to route_to('comments#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/comments').to route_to('comments#create')
    end
  end
end
