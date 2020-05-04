class Friendship < ApplicationRecord
  belongs_to :user
  # clearify the class_name is User not Friend 
  belongs_to :friend, class_name: 'User'
end
