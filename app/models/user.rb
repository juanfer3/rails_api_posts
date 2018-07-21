class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
=begin
 devise :database_authenticatable, 
        :registerable,
        :recoverable, 
        :rememberable, 
        :trackable,  
        :validatable, 
        :omniauthable
=end
  include DeviseTokenAuth::Concerns::User
  before_create :skip_confirmation!
end
