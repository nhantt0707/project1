class User < ActiveRecord::Base
  has_many :lessons, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :active_relationships, class_name: "Relationship" foreign_key: "follower_id"
  								   dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship" foreign_key: "followed_id"
  									dependent: :destroy
  has_many  :following, through: :active_relationships, source: :followed
  has_many :followers, through: :active_relationships, source: :following
end
