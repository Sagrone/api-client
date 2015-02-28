require 'spec_helper'

RSpec.describe Sagrone::Base do
  it 'should include and be a Her::Model' do
    expect(described_class.new).to be_a(Her::Model)
  end
end
