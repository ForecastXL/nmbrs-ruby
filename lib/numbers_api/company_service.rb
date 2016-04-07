module NumbersApi
  class CompanyService

    attr_accessor :configuration, :session_id

    def initialize(configuration)
      @configuration = configuration

      @client = Savon.client(
        wsdl: NumbersApi::WSDLS[:company_service],
        #convert_request_keys_to: :camelcase,
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

# [:default_employee_templates_get_by_company,
#  :salary_documents_get_employee_payslips_pdf_by_run_company,
#  :salary_documents_get_employee_payslips_pdf_by_run_company_v2,
#  :salary_documents_get_all_payslips_pdf_by_run_company,
#  :salary_documents_get_all_payslips_pdf_by_run_company_v2,
#  :wage_component_fixed_get,
#  :wage_component_fixed_get_current,
#  :wage_component_fixed_insert,
#  :wage_component_fixed_insert_current,
#  :wage_component_fixed_stop,
#  :wage_component_fixed_insert_batch,
#  :wage_component_var_clear,
#  :wage_component_var_clear_current,
#  :wage_component_var_get,
#  :wage_component_var_get_current,
#  :wage_component_var_insert_current,
#  :wage_component_var_insert,
#  :wage_component_var_insert_batch,
#  :wage_tax_get_list,
#  :wage_tax_get_xml,
#  :wage_tax_set_sent_external,
#  :company_get_current_period,
#  :bank_account_get_current,
#  :bank_account_update,
#  :bank_account_insert,
#  :file_explorer_upload_file,
#  :reports_get_payslip_by_run_company,
#  :reports_get_payslip_by_run_company_v2,
#  :reports_get_wage_codes_by_run_company,
#  :reports_get_wage_codes_by_run_company_v2,
#  :reports_get_wage_codes_by_year,
#  :reports_get_journals_report_by_company,
#  :journals_get_by_run_company,
#  :journals_get_by_run_company_v2,
#  :journals_get_by_run_employee,
#  :journals_get_by_run_employee_v2,
#  :journals_get_by_run_cost_center,
#  :journals_get_by_run_cost_center_v2,
#  :journals_get_by_run_department,
#  :journals_get_by_run_department_v2,
#  :run_get_list,
#  :svw_get_current,
#  :svw_update_current,
#  :salary_table_get_scales,
#  :salary_table_get_steps,
#  :salary_table_get,
#  :cost_center_get_list,
#  :cost_unit_get_list,
#  :cost_center_insert,
#  :address_get_current,
#  :address_update,
#  :address_insert,
#  :run_request_insert,
#  :run_request_get_list,
#  :schedule_get_current,
#  :hour_model_get_hour_codes,
#  :wage_model_get_wage_codes,
#  :work_cost_get_list,
#  :work_cost_insert,
#  :list_get_all,
#  :list_get_by_debtor]