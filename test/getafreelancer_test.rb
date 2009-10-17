require 'test_helper'

class GetafreelancerTest < Test::Unit::TestCase
  context "Fetching User Data" do
    setup do
      FakeWeb.register_uri(:get, "http://api.getafreelancer.com/User/Properties.json?id=amerine&", :body => File.read("test/fixtures/user.json"))
      @client = GetAFreelancer::Client.new
      @user = @client.user('amerine')
    end
    
    should "have an id" do
      @user.id.should == 1246655
    end
    
    should "have a username" do
      @user.username.should == 'amerine'
    end
  end
end
