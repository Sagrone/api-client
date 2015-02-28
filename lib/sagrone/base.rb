module Sagrone
  class Base
    include Her::Model
    use_api -> { Sagrone.client.api }
  end
end
