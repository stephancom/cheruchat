class Comment < ChatEvent
  validates :comment, presence: true
end