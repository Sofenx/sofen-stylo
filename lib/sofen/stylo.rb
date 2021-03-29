# frozen_string_literal: true

require_relative "stylo/version"

module Sofen
  module Stylo
    class Error < StandardError; end

    class Engine < ::Rails::Engine; end
  end
end
