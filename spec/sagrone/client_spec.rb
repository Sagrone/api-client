require 'spec_helper'

RSpec.describe Sagrone::Client do
  let(:client) { Sagrone::Client.instance }

  describe 'self.configure' do
    it 'should configure the client' do
      client.configure do |c|
        c.url = 'http://api.sagrone/v1'
      end

      expect(client.api).to be_a(Her::API)
      expect(client.url).to eq 'http://api.sagrone/v1'
      expect(client.api.base_uri).to eq 'http://api.sagrone/v1'
    end

    it 'should have a configurable url' do
      client.configure do |c|
        c.url = 'http://different-endpoint'
      end

      expect(client.api.base_uri).to eq 'http://different-endpoint'
    end
  end
end
