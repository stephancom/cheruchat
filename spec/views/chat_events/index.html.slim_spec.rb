require 'rails_helper'

RSpec.describe "chat_events/index", :type => :view do
  before(:each) do
    assign(:chat_events, [
      ChatEvent.create!(
        :type => "Type",
        :chat_room => nil,
        :user => nil,
        :target_user => nil,
        :comment => "Comment"
      ),
      ChatEvent.create!(
        :type => "Type",
        :chat_room => nil,
        :user => nil,
        :target_user => nil,
        :comment => "Comment"
      )
    ])
  end

  it "renders a list of chat_events" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
