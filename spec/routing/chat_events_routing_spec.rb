require "rails_helper"

RSpec.describe ChatEventsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chat_events").to route_to("chat_events#index")
    end

    it "routes to #new" do
      expect(:get => "/chat_events/new").to route_to("chat_events#new")
    end

    it "routes to #show" do
      expect(:get => "/chat_events/1").to route_to("chat_events#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chat_events/1/edit").to route_to("chat_events#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/chat_events").to route_to("chat_events#create")
    end

    it "routes to #update" do
      expect(:put => "/chat_events/1").to route_to("chat_events#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chat_events/1").to route_to("chat_events#destroy", :id => "1")
    end

  end
end
