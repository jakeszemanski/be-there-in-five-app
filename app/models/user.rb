class User < ApplicationRecord
  has_many :events, through: :user_events
end
