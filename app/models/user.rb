class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :rides
  has_many :events, through: :rides

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
