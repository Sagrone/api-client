require 'spec_helper'

RSpec.describe Sagrone::VERSION do
  it 'should be a string' do
    expect(Sagrone::VERSION).to be_a(String)
  end
end
