class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :ride_offers, class_name: "Ride", foreign_key: "user_id"
  has_many :events, through: :ride_offers
  has_many :seats
  has_many :rides, through: :seats


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

# http://guides.rubyonrails.org/association_basics.html#has-many-association-reference
# look for class_name, foreign_key and source options
