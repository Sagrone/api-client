require "sagrone/version"

require "her"

require "sagrone/client"
require "sagrone/base"
require "sagrone/event"

module Sagrone
  def self.client
    Client.instance
  end
end
