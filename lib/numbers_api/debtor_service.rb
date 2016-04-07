module NumbersApi
  class DebtorService

    def initialize(configuration)
      @configuration = configuration

      @client = Savon.client(
        wsdl: NumbersApi::WSDLS[:debtor_service],
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

# [:absence_xml_get,
#  :address_get,
#  :bank_account_get,
#  :department_get_list,
#  :department_insert,
#  :department_update,
#  :department_delete,
#  :function_get_list,
#  :function_insert,
#  :function_update,
#  :function_delete,
#  :tags_get,
#  :contact_person_get,
#  :accountant_contact_get_list,
#  :service_level_get,
#  :debtor_get,
#  :debtor_insert,
#  :debtor_update,
#  :list_get_all,
#  :list_get_by_number,
#  :title_get_list,
#  :title_insert]