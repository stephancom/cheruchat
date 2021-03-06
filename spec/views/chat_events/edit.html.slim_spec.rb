require 'rails_helper'

RSpec.describe "chat_events/edit", :type => :view do
  before(:each) do
    @chat_event = assign(:chat_event, ChatEvent.create!(
      :type => "",
      :chat_room => nil,
      :user => nil,
      :target_user => nil,
      :comment => "MyString"
    ))
  end

  it "renders the edit chat_event form" do
    render

    assert_select "form[action=?][method=?]", chat_event_path(@chat_event), "post" do

      assert_select "input#chat_event_type[name=?]", "chat_event[type]"

      assert_select "input#chat_event_chat_room_id[name=?]", "chat_event[chat_room_id]"

      assert_select "input#chat_event_user_id[name=?]", "chat_event[user_id]"

      assert_select "input#chat_event_target_user_id[name=?]", "chat_event[target_user_id]"

      assert_select "input#chat_event_comment[name=?]", "chat_event[comment]"
    end
  end
end
