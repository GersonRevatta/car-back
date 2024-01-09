# frozen_string_literal: true

# spec/controllers/api/v1/items_controller_spec.rb
require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  describe 'GET #index' do
    before do
      create(:item, name: 'Item 1', price: 10.0)
      create(:item, name: 'Item 2', price: 15.0)
      get :index
    end

    it 'returns a successful response' do
      expect(response).to have_http_status(:success)
    end

    it 'renders JSON with all items' do
      expect(response).to have_http_status(:success)
      expect(response.content_type).to eq('application/json')

      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(2)
    end
  end
end
