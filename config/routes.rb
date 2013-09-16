Masconaso::Application.routes.draw do
  root 'home#index'
  get "home/about_us"
  get "home/terms"
  devise_for :players, controllers: {:registrations => "players"}
  resources :players, only:[:show] do
  	resources :teams
  end
  get "players/my_locker" => "players#show", as: :my_locker
end
