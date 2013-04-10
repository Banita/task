class SecretCode < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :user
    def generate_codes(number)
  	  a=(1..10).to_a.shuffle
  	  a.each do |i|
  		 secret_code = SecretCode.new
  		 secret_code.secret_code=i
  		 secret_code.save
  	   end	
   end
end
