class ChatRoom < ActiveRecord::Base
  has_many :chat_events
  has_and_belongs_to_many :users

  # specific events
  has_many :enter_rooms
  has_many :leave_rooms
  has_many :comments
  has_many :high_fives, class_name: HighFive

  validates :name, uniqueness: true
end
