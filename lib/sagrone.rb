require "sagrone/version"

require "her"

require "sagrone/client"
require "sagrone/base"

module Sagrone
  def self.client
    Client.instance
  end
end
