class LeaveRoom < ChatEvent
  after_create :remove_user_from_room

private
  
  def remove_user_from_room
    chat_room.users.delete(user)
  end
end