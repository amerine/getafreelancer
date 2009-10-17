require 'test_helper'

class GetafreelancerTest < Test::Unit::TestCase
  context "Fetching User Data" do
    setup do
      puts Dir.pwd
      FakeWeb.register_uri(:get, "http://api.getafreelancer.com/User/Properties.json?id=amerine", :string => File.read("test/fixtures/user.json"))
      @client = GetAFreelancer::Client.new
      @user = @client.user
    end
    
    should "have id" do
      @user.id.should == '1246655'
    end
    
    should "have username" do
      @user.username.should == 'amerine'
    end
  end
end
