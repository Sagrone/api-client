require 'spec_helper'

RSpec.describe Sagrone::Client do
  let(:client) { Sagrone::Client.instance }

  it 'should configure the client' do
    client.configure do |c|
      c.url = 'http://api.sagrone/v1'
    end

    expect(client.url).to eq 'http://api.sagrone/v1'
  end
end
