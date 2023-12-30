# frozen_string_literal: true

require_relative "daypack/version"

# sundry useful method extensions
module Daypack
  class Error < StandardError; end

  Dir.glob("#{File.dirname(__FILE__)}/daypack/**/*.rb").sort.each { |f| require f }
end
