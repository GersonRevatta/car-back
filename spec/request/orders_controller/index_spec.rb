# frozen_string_literal: true

# spec/controllers/api/v1/items_controller_spec.rb
require 'rails_helper'

RSpec.describe Api::V1::OrdersController, type: :controller do
  describe 'GET #index' do
    let(:item) { create(:item, name: 'Example Item', price: 10.99) }
    let(:order_item) { create(:order_item, item: item) }

    before do
      order_item
      get :index
    end

    it 'returns a successful response' do
      expect(response).to have_http_status(:success)
    end

    it 'renders JSON with all orders' do
      expect(response).to have_http_status(:success)
      expect(response.content_type).to eq('application/json')

      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(1)
    end
  end
end
