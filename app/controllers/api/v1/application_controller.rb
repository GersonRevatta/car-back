# frozen_string_literal: true

module Api
  module V1
    # ApplicationController
    class ApplicationController < ActionController::Base
      protect_from_forgery unless: -> { request.format.json? }
    end
  end
end
