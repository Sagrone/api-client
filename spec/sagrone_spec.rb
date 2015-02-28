require 'spec_helper'

RSpec.describe Sagrone do
  it 'should fetch a client' do
    expect(Sagrone.client).to be_a(Sagrone::Client)
  end
end
