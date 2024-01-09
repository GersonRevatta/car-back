# frozen_string_literal: true

module Api
  module V1
    # ItemsController
    class ItemsController < Api::V1::ApplicationController
      def index
        render json: Item.all
      end
    end
  end
end
