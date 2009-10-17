require 'rubygems'
gem 'httparty', '>= 0.4.5'
require 'httparty'


module GetAFreelancer
  class Client
    include HTTParty
    
    def initialize(api_key)
      self.class.default_params :apikey => api_key unless api_key.blank?
    end
    
    
    
  end