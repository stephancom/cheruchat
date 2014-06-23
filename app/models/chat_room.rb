class ChatRoom < ActiveRecord::Base
  has_many :chat_events
  # TODO - room members
  # has_and_belongs_to_many :users
end
