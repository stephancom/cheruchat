class ChatEventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chat_room
  before_action :group_options

  def index
    @chat_events = @chat_room.chat_events.all
    @group_by = params[:group_by]
    @group_by = 'none' unless group_options.include? params[:group_by]

    case @group_by
    when 'minute'
      @grouped_events = @chat_events.group_by { |event| event.created_at.strftime('%y/%m/%d %H:%M%P') }
    when 'hour'
      @grouped_events = @chat_events.group_by { |event| event.created_at.strftime('%y/%m/%d %H%P') }
    when 'day'
      @grouped_events = @chat_events.group_by { |event| event.created_at.strftime('%y/%m/%d') }
    when 'month'
      @grouped_events = @chat_events.group_by { |event| event.created_at.strftime('%y/%m') }
    when 'year'
      @grouped_events = @chat_events.group_by { |event| event.created_at.strftime('%Y') }
    end
  end

  private

    def group_options
      @group_options ||= %w(none minute hour day month year)
    end

    def set_chat_room
      @chat_room ||= ChatRoom.find(params[:chat_room_id])
    end
end
