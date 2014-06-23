class HighFive < ChatEvent
  belongs_to :target_user, class_name: User
  delegate :name, to: :target_user, prefix: true
  # TODO validate target user is in room

  def to_s
    "#{user_name} high-fives #{target_user_name}"
  end

end