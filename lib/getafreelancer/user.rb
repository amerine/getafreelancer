module GetAFreelancer
  class User
    attr_reader :ident, :client
  
    def initialize(client, ident)
      @client, @ident = client, ident
      @user = client.get("/User/Properties.json?id=#{ident}")['profile']
    end
  
    def info
      @user
    end
  
    def url
      @user['url']
    end
  
    def id
      @user['id']
    end
  
    def username
      @user['username']    
    end
  
    def logo_url
      @user['logo_url']
    end
  
    def reg_unixtime
      @user['reg_unixtime']
    end
  
    def reg_date
      @user['reg_date']
    end
  
    def company
      @user['company']
    end
  
    def gold
      @user['gold']
    end
  
    def country
      @user['address']['country']
    end
  
    def city
      @user['address']['city']
    end
    
    def hourly_rate
      @user['hourlyrate']
    end
    
    def rating_average
      @user['rating']['avg']
    end
    
    def rating_count
      @user['rating']['count']
    end
    
    def provider_rating_average
      @user['provider_rating']['avg']
    end
    
    def provider_rating_count
      @user['provider_rating']['count']
    end
    
    def buyer_rating_average
      @user['buyer_rating']['avg']
    end
    
    def buyer_rating_count
      @user['buyer_rating']['count']
    end
    
    def jobs
      @user['jobs']
    end
  end
end