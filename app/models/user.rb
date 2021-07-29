class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :measurements
  belongs_to :workout, :optional => true
  has_many :exercises, :through => :workouts
end
