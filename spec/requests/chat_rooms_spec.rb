require 'rails_helper'

RSpec.describe "ChatRooms", :type => :request do
  describe "GET /chat_rooms" do
    it "works! (now write some real specs)" do
      get chat_rooms_path
      expect(response.status).to be(200)
    end
  end
end
