class HighFive < ChatEvent
  belongs_to :target_user
  # TODO validate target user is in room
end