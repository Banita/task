class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname,:password,:password_confirmation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :secret_code, :foreign_key =>:id
end
