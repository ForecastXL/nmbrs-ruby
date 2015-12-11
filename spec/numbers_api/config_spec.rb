require 'spec_helper'

describe NumbersApi::Configuration do

  it "creates a configuration object" do
    conf = NumbersApi::Configuration.new(
      "my_username", "my_api_key", "my_company"
    )
    conf.username.should == "my_username"
    conf.password.should == "my_api_key"
    conf.company.should == "my_company"
  end

  it "returns a hash object" do
    conf = NumbersApi::Configuration.new(
      "my_username", "my_api_key", "my_company"
    )
    conf_hash = conf.to_hash
    conf_hash['user'].should == "my_username"
    conf_hash['api_key'].should == "my_api_key"
    conf_hash['company'].should == "my_company"
  end


end