module StubHelper
  def stub_api_for(klass)
    klass.use_api (api = Her::API.new)

    api.setup url: "http://api.example.com" do |c|
      c.use Her::Middleware::FirstLevelParseJSON
      c.adapter(:test) { |s| yield(s) }
    end
  end

  def get_json_response_file(name)
    IO.read(File.join('spec/test_responses', "#{name}.json"))
  end
end
