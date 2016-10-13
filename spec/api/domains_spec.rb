require 'spec_helper'

describe Vscale::Domains do
  before(:each) do
    @api = Vscale::Api::Client.new("FAKE_TOKEN")
    @api.stub :get
    @api.stub :post
  end

  describe "#domains" do
    it "calls #get with the correct url" do
      @api.should_receive(:get).with("domains/")
      @api.domains
    end
  end
  
  describe "#add_domain" do
    it "calls #post with the correct url and params" do
      params = {:hello => :world}
      @api.should_receive(:post).with("domains/", params)
      @api.add_domain params
    end
  end

  describe "#domain_id" do
    it "calls #get with the correct url" do
      domain_id = 90210
      @api.should_receive(:get).with("domains/90210")
      @api.domain_id domain_id
    end
  end
  
end
