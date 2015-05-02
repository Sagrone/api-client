require 'spec_helper'

RSpec.describe Sagrone do
  describe '.client' do
    it 'should fetch a client' do
      expect(Sagrone.client).to be_a(Sagrone::Client)
    end
  end

  describe '.client_api' do
    it 'should be nil' do
      expect(Sagrone.client_api).to be_nil
    end

    context 'client configured' do
      before do
        Sagrone.client.configure do |c|
          c.url = 'http://example.com'
        end
      end

      it 'should be a Her::API' do
        expect(Sagrone.client_api).to be_a(Her::API)
      end
    end
  end
end
