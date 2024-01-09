# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::OrdersController, type: :controller do
  describe 'DELETE #destroy' do
    let!(:order) { create(:order) }

    it 'destroys the order' do
      expect do
        delete :destroy, params: { id: order.id }
      end.to change(Order, :count).by(-1)

      expect(response).to have_http_status(:ok)
    end

    it 'renders JSON with success message' do
      delete :destroy, params: { id: order.id }

      expect(response).to have_http_status(:ok)

      json_response = JSON.parse(response.body)
      expect(json_response).to eq('ok')
    end
  end
end
