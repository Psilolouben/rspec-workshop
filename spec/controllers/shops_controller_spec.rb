require 'rails_helper'

# now deprecated
RSpec.describe ShopsController, :type => :controller do
  describe 'GET shops' do
    let(:path) { shops_path }

    it 'renders the correct template' do
      get :index
      
      expect(response).to render_template(:index)
    end

    it 'renders the correct template' do
      get :index
      
      expect(response).to have_http_status(:ok)
    end
  end
end
