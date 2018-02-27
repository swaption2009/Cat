require 'rails_helper'

RSpec.describe TagsController, type: :controller do
  describe '/stats' do
    it 'responds successfully' do
      get :stats
      expect(response).to be_success
    end
  end
end
