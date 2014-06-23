require 'rails_helper'

RSpec.describe "chat_events/show", :type => :view do
  before(:each) do
    @chat_event = assign(:chat_event, ChatEvent.create!(
      :type => "Type",
      :chat_room => nil,
      :user => nil,
      :target_user => nil,
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Comment/)
  end
end
