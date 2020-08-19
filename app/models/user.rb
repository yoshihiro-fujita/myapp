class User < ApplicationRecord
 validates :name, presence: true
 validates :email, presence: true
validates :password, presence: true、length: {minimum:6}  

 has_many :vehicles
end
