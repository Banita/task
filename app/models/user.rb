class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
