Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :leagues do
    resources :games
    resources :teams do
      resources :players, except: :index
    end
  end
end
