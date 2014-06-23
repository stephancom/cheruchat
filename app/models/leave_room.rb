class LeaveRoom < ChatEvent
  after_create :remove_user_from_room

  def to_s
    "#{user_name} leaves the room"
  end

private
  
  def remove_user_from_room
    chat_room.users.delete(user)
  end
end