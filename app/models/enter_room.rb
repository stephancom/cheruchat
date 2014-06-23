class EnterRoom < ChatEvent
  after_create :add_user_to_room

  def to_s
    "#{user_name} enters the room"
  end

private
  
  def add_user_to_room
    chat_room.users << user
  end  
end