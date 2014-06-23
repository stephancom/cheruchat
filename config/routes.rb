Rails.application.routes.draw do
  devise_for :users

  resources :chat_rooms do
    resources :chat_events    
    # temporary TODO remove
    resources :comments, controller: 'chat_events'
    resources :enter_rooms, controller: 'chat_events'
    resources :leave_rooms, controller: 'chat_events'
    resources :high_fives, controller: 'chat_events'
  end

  root to: 'application#home'
end
