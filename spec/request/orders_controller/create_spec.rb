# frozen_string_literal: true

# spec/controllers/api/v1/orders_controller_spec.rb
require 'rails_helper'

RSpec.describe Api::V1::OrdersController, type: :controller do
  describe 'POST #create' do
    context 'with valid parameters' do
      it 'creates a new order' do
        expect do
          post :create, params: { order: { amountTotal: 100 } }
        end.to change(Order, :count).by(1)

        expect(response).to have_http_status(:created)

        json_response = JSON.parse(response.body)
        expect(json_response['amountTotal']).to eq(100)
      end
    end

    context 'with invalid parameters' do
      it 'returns unprocessable_entity status' do
        expect do
          post :create, params: { order: { amountTotal: nil } }
        end.not_to change(Order, :count)

        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
