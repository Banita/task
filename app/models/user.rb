class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname,:password,:password_confirmation,:secret_code
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :code, :foreign_key =>"code_id",:class_name=>"SecretCode"

  # belongs_to :parent, :foreign_key => "parent_id", :class_name => "Branch"
end
