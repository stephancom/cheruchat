Rails.application.routes.draw do
  devise_for :users

  resources :chat_rooms do
    resources :chat_events #, only: :index
    # temporary TODO remove
    resources :comments, controller: 'chat_events'
    resources :enter_rooms, controller: 'chat_events'
    resources :leave_rooms, controller: 'chat_events'
    resources :high_fives, controller: 'chat_events'

    member do
      post 'enter'
      delete 'leave' # arguable as to whether this should be POST or DELETE because it also creates a ChatEvent record
      post 'high_five'
      post 'comment'      
    end
  end

  root to: 'application#home'
end
