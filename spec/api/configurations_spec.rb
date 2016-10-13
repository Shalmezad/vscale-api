require 'spec_helper'

describe Vscale::Configurations do
  before(:each) do
    @api = Vscale::Api::Client.new("FAKE_TOKEN")
  end
  
  describe "#rplans" do
    before (:each) do
      @api.stub :get
    end

    it "calls #get with the correct url" do
      @api.should_receive(:get).with("rplans")
      @api.rplans
    end

  end
end
