require "rails_helper"

RSpec.describe "Shops Controller", type: :request do
  let(:path) { shops_path }
  
  it 'renders the correct template' do
    get path

    expect(response).to render_template(:index)
  end

  it 'renders the correct info' do
    get path
    
    expect(response.body).to include("Hello!")
  end
end
