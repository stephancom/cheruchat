class ChatEventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chat_room
  before_action :set_chat_event, only: [:show, :edit, :update, :destroy]

  # GET /chat_events
  # GET /chat_events.json
  def index
    @chat_events = @chat_room.chat_events.all
  end

  # GET /chat_events/1
  # GET /chat_events/1.json
  def show
  end

  # GET /chat_events/new
  def new
    @chat_event = @chat_room.chat_events.new(user: current_user)
  end

  # GET /chat_events/1/edit
  def edit
  end

  # POST /chat_events
  # POST /chat_events.json
  def create
    @chat_event = @chat_room.chat_events.new(chat_event_params)

    respond_to do |format|
      if @chat_event.save
        format.html { redirect_to chat_room_chat_events_url(@chat_room), notice: 'Chat event was successfully created.' }
        format.json { render :show, status: :created, location: @chat_event }
      else
        format.html { render :new }
        format.json { render json: @chat_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chat_events/1
  # PATCH/PUT /chat_events/1.json
  def update
    respond_to do |format|
      if @chat_event.update(chat_event_params)
        format.html { redirect_to chat_room_chat_events_url(@chat_room), notice: 'Chat event was successfully updated.' }
        format.json { render :show, status: :ok, location: @chat_event }
      else
        format.html { render :edit }
        format.json { render json: @chat_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chat_events/1
  # DELETE /chat_events/1.json
  def destroy
    @chat_event.destroy
    respond_to do |format|
      format.html { redirect_to chat_room_chat_events_url(@chat_room), notice: 'Chat event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chat_room
      @chat_room ||= ChatRoom.find(params[:chat_room_id])
    end
    def set_chat_event
      @chat_event = @chat_room.chat_events.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chat_event_params
      params.require(:chat_event).permit(:type, :target_user_id, :comment).merge(user: current_user)
    end
end
