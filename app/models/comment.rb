class Comment < ChatEvent
  validates :comment, presence: true

  def to_s
    "#{user_name} comments \"#{comment}\""
  end

end