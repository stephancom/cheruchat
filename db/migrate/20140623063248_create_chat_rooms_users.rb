class CreateChatRoomsUsers < ActiveRecord::Migration
  def change
    create_table :chat_rooms_users do |t|
      t.references :chat_room, index: true
      t.references :user, index: true
    end
  end
end
