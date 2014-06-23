json.array!(@chat_events) do |chat_event|
  json.extract! chat_event, :id, :type, :chat_room_id, :user_id, :target_user_id, :comment
  json.url chat_event_url(chat_event, format: :json)
end
