require 'spec_helper'

RSpec.describe Sagrone::Event do
  describe 'with one event' do
    before do
      stub_api_for(Sagrone::Event) do |stub|
        event = get_json_response_file('event')
        stub.get('/events/1') { |env| [200, {}, event] }
      end
    end

    it 'should find event by id' do
      event = Sagrone::Event.find(1)

      expect(event.id).to eq('54f232b947696c1fcd000000')
      expect(event.title).to eq('Title 1')
      expect(event.description).to eq('Description 1')
    end
  end

  describe 'with more events' do
    before do
      stub_api_for(Sagrone::Event) do |stub|
        events = get_json_response_file('events')
        stub.get('/events') { |env| [200, {}, events] }
      end
    end

    it 'should return all three events' do
      events = Sagrone::Event.all

      expect(events).to be
      expect(events.count).to eq 3
    end

    it 'first event has correct values' do
      first_event = Sagrone::Event.all.first

      expect(first_event).to be
      expect(first_event.id).to eq('54f232b947696c1fcd000000')
      expect(first_event.title).to eq('Title 1')
      expect(first_event.description).to eq('Description 1')
    end

    it 'last event has correct values' do
      last_event = Sagrone::Event.all.last

      expect(last_event).to be
      expect(last_event.id).to eq('54f236ba47696c269b000000')
      expect(last_event.title).to eq('Title 3')
      expect(last_event.description).to eq('Description 3')
    end
  end
end
