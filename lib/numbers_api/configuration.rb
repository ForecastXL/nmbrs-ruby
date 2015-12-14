module NumbersApi

  class Configuration
    attr_accessor :username
    attr_accessor :api_key
    attr_accessor :company

    def initialize(username, api_key, company = nil)
      @username = username
      @api_key = api_key
      @company = company
    end

    def to_hash
      {
        "user" => @username,
        "api_key" => @api_key,
        "company" => @company
      }
    end
  end

end