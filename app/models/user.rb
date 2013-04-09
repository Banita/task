class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname,:password,:password_confirmation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
