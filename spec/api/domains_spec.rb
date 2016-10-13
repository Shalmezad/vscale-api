require 'spec_helper'

describe Vscale::Domains do
  before(:each) do
    @api = Vscale::Api::Client.new("FAKE_TOKEN")
    @api.stub :get
    @api.stub :post
    @api.stub :patch
    @api.stub :delete
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

  describe "#update_domain" do
    it "calls #patch with the correct url and params" do
      domain_id = 90210
      params = {:hello => :world}
      @api.should_receive(:patch).with("domains/90210", params)
      @api.update_domain domain_id, params
    end
  end

  describe "#remove_domain" do
    it "calls #delete with the correct url" do
      domain_id = 90210
      @api.should_receive(:delete).with("domains/90210")
      @api.remove_domain domain_id
    end
  end

  describe "Domain Records" do

    describe "#domain_records" do
      it "calls #get with the correct url" do
        domain_id = 90210
        @api.should_receive(:get).with("domains/90210/records/")
        @api.domain_records domain_id
      end
    end

    describe "#add_domain_record" do
      it "calls #post with the correct url and params" do
        domain_id = 90210
        params = {:hello => :world}
        @api.should_receive(:post).with("domains/90210/records/", params)
        @api.add_domain_record domain_id, params
      end
    end

  end
  
end
