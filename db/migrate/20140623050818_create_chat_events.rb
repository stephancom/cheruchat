class CreateChatEvents < ActiveRecord::Migration
  def change
    create_table :chat_events do |t|
      t.string :type
      t.references :chat_room, index: true
      t.references :user, index: true
      t.references :target_user, index: true
      t.string :comment

      t.timestamps
    end
  end
end
