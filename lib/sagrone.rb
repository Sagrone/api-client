require "sagrone/version"

require "her"

require "sagrone/client"

module Sagrone
  def self.client
    Client.instance
  end
end
