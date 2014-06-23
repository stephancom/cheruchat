require 'rails_helper'

RSpec.describe "ChatEvents", :type => :request do
  describe "GET /chat_events" do
    it "works! (now write some real specs)" do
      get chat_events_path
      expect(response.status).to be(200)
    end
  end
end
