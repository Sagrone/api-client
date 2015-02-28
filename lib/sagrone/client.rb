require 'singleton'

module Sagrone
  class Client
    include Singleton

    attr_accessor :url

    def configure
      yield self
    end
  end
end
