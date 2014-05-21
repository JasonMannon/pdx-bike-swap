class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_password
  has_many :components
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
