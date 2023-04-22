# frozen_string_literal: true

require_relative "daypack/version"

module Daypack
  class Error < StandardError; end

  Dir.glob("#{File.dirname(__FILE__)}/daypack/**/*.rb").each { |f| require f }
end
