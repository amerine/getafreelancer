require 'test_helper'

class GetafreelancerTest < Test::Unit::TestCase
  context "Fetching User Data" do
    setup do
      #TODO: Figure out why the fuck FakeWeb won't work with the fxiures/user.json file
      #FakeWeb.register_uri(:get, "http://api.getafreelancer.com/User/Properties.json?id=amerine", :body => File.read("fixtures/user.json"))
      @client = GetAFreelancer::Client.new
      @user = @client.user('amerine')
    end
    
    should "have an id" do
      @user.id.should == 1246655
    end
    
    should "have a url" do
      @user.url.should == "http://www.getafreelancer.com/users/1246655.html"
    end
    
    should "have a username" do
      @user.username.should == 'amerine'
    end
    
    should "have a company" do 
      @user.company.should == 'nVariable Inc.'
    end
    
    should "have a gold amount" do
      @user.gold.should == 0
    end
    
    should "have a country" do
      @user.country.should == "United States"
    end
    
    should "have a reg_unixtime" do
      @user.reg_unixtime.should == 1255764110
    end
    
    should "have a reg_data" do 
      @user.reg_date.should == "Sat, 17 Oct 2009 03:21:50 -0400"
    end
    
  end
end
