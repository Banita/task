class SecretCode < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :secret_code
  has_one :user
    def self.generate_codes(number)
    	number.times do 
    		secret_code = SecretCode.new
            secret_code.secret_code=rand(1000)
            secret_code.save
  	   end	
   end
end
