require 'rails_helper'

RSpec.describe Shop, :type => :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:phone) }
  end

  describe '#shop_name_printer' do
    let!(:shop) { FactoryBot.create(:shop, :mstarting) }
    subject { shop.shop_name_printer }
    
    context 'when the shop starts with M' do
      it 'prints the correct message' do
        expect(subject).to eq('Starts with M!')
      end
    end
  end 

  describe '#update_shop_name' do
    let!(:shop) { FactoryBot.create(:shop, :mstarting) }
    subject { shop.update_shop_name }
    
    context 'when the shop starts with M' do
      it 'prints the correct message' do
        subject

        expect(shop.name).to eq('updated_name')
      end
    end
  end 
end
