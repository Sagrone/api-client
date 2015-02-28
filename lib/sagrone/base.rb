module Sagrone
  class Base
    include Her::Model
    use_api -> { Sagrone.client.api }
    parse_root_in_json true, format: :active_model_serializers
  end
end
