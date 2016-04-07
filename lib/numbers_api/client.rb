module NumbersApi
  class Client

    attr_accessor :configuration

    #
    # Initialize the client with a configuration object and a service
    #
    def initialize(configuration, service)
      raise "Service not supported! Choose between: #{NumbersApi::WSDLS.keys}" unless NumbersApi::WSDLS.keys.include?(service)
      @configuration = configuration

      @client = Savon.client(
        wsdl: NumbersApi::WSDLS[service],
        # convert_request_keys_to: :camelcase,
        # TODO REMOVE SSL_VERIFY_MODE IN PRODUCTION!
        # ssl_verify_mode: :none,
        env_namespace: :soapenv,
        namespace_identifier: :com,
        #soap_header: { auth_header: { username: configuration.username, token: configuration.api_key }  }
        soap_header: { 'com:AuthHeader' => { 'com:Username' => configuration.username, 'com:Token' => configuration.api_key }  }
      )
    end

    def request(action, data = {})
      @client.call(action, message: data)
    end
  end
end