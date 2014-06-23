class ChatEventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chat_room

  def index
    @chat_events = @chat_room.chat_events.all
  end

  private
    def set_chat_room
      @chat_room ||= ChatRoom.find(params[:chat_room_id])
    end
end
