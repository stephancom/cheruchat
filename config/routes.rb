Rails.application.routes.draw do
  resources :chat_rooms

  devise_for :users


  root to: 'application#home'
end
