# frozen_string_literal: true

module Api
  module V1
    # OrdersController
    class OrdersController < Api::V1::ApplicationController
      before_action :set_order, only: [:destroy]

      def index
        render json: Order.all
      end

      def create
        order = Order.new(orders_params)
        if order.save
          render json: order, status: :created
        else
          render json: order.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @order.destroy
        render json: :ok
      end

      private

      def orders_params
        params.require(:order).permit(:amountTotal, order_items_attributes: %i[id item_id])
      end

      def set_order
        @order = Order.find(params[:id])
      end
    end
  end
end
