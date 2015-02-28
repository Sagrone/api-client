require 'singleton'

module Sagrone
  class Client
    include Singleton

    attr_accessor :url
    attr_reader   :api

    def configure
      yield self

      @api = Her::API.new
      @api.setup url: @url do |c|
        c.use Faraday::Request::UrlEncoded
        c.use Her::Middleware::DefaultParseJSON
        c.use Faraday::Adapter::NetHttp
      end
    end
  end
end
