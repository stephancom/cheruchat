class EnterRoom < ChatEvent
  after_create :add_user_to_room

private
  
  def add_user_to_room
    chat_room.users << user
  end  
end