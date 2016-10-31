# Numbers API handling the v2.1 SOAP-API of NMBRS


## Installation

    $ gem install nmbrs


## Example Usage

  Initialize a configuration object:

    $ config = Nmbrs::Configuration.new("user@email.com", "nmbrs_api_key_example123", "numbers_company_id (optional)")

  Initialize a service (company_service, debtor_service or employee_service)

    $ company_service = Nmbrs::CompanyService.new(config)

  Make a request to the service

    $ company_service.request(:list_get_all)

  Optionally you can pass in extra parameters, for example:

    $ company_service.request(:cost_center_get_list, company_id: 37727)


### For a list of available methods:

  Check lib/nmbrs/company_service.rb / debtor_service.rb / employee_service.rb


### Api documentation

  https://support.nmbrs.nl/hc/nl/sections/200668406-Nmbrs-API-v2-1-Latest-Reference

### Mapping to ForecastXL objects

  Department = company_service.request(:cost_center_get_list, company_id: 37731)
    code = code
    name = description

  Product = company_service.request(:cost_unit_get_list, company_id: 37731)
    code = code
    name = description

  Relation = employee_service.request(:list_get_by_company, company_id: 37731)
    code = number
    name = display_name


