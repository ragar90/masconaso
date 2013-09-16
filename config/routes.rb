Masconaso::Application.routes.draw do
  resources :tournaments

  root 'home#index'
  get "home/about_us"
  get "home/terms"
  devise_for :players, controllers: {:registrations => "players"}
  resources :players, only: [:show] do
  	resources :teams
    resources :leagues
  end
  get "players/my_locker" => "players#show", as: :my_locker
  scope :teams do
    get ":team_id/matches"=>"matches#index", as: :matches
    get ":team_id/matches/:id/edit"=>"matches#edit", as: :edit_match
    get ":team_id/matches/:id"=>"matches#show", as: :match
    put ":team_id/matches/:id"=>"matches#update"
    delete ":team_id/matches/:id/cancel"=>"matches#cancel", as: :cancel_match
    put ":team_id/matches/:id/confirm" => "matches#confirm", as: :confirm_match
    get ":team2_id/challege" => "matches#new", as: :challege
    post ":team2_id/challege" => "matches#create"
  end
end
