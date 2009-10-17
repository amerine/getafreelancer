require 'rubygems'
gem 'httparty', '>= 0.4.5'
require 'httparty'
%w(user).each { |x| require File.dirname(__FILE__) + "/getafreelancer/#{x}.rb" }


module GetAFreelancer
  class Client
    include HTTParty
    base_uri "http://api.getafreelancer.com"
    
    def initialize(api_key='')
      self.class.default_params :apikey => api_key unless api_key.blank?
    end
    
    def get(path, options={})
      self.class.get("#{path}", options)
    end
    
    def user(user_id_or_slug="")
      User.new(self, user_id_or_slug)
    end
  end
  

end