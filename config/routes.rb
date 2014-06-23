Rails.application.routes.draw do
  devise_for :users

  resources :chat_rooms do
    resources :chat_events, only: :index

    member do
      post 'enter'
      delete 'leave' # arguable as to whether this should be POST or DELETE because it also creates a ChatEvent record
      post 'high_five'
      post 'comment'      
    end
  end

  root to: 'application#home'
end
