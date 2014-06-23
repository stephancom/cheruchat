class ChatEvent < ActiveRecord::Base
  belongs_to :chat_room
  delegate :name, to: :chat_room, prefix: true
  belongs_to :user
  delegate :name, to: :user, prefix: true
  # TODO validate user is in room except for EnterRoom
  # TODO after create, publish to private_pub

  EVENT_TYPES = %w(EnterRoom LeaveRoom HighFive Comment)
  validate :type, inclusion: {in: EVENT_TYPES}

  default_scope -> {order('created_at ASC')}
end
