Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :leagues
  resources :games
  resources :teams
  resources :players 
end
