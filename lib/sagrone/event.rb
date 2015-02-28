module Sagrone
  class Event < Base
    attributes :title, :description

    validates :title, presence: true
    validates :description, presence: true
  end
end
