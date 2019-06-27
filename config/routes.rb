Rails.application.routes.draw do
  get 'players/index' => "root"
  get 'players/delete/:id' => "players#delete"
  root 'players#index'
  get 'players/add_players'
  get "index" => "players#index"
  get 'players/show/:id' => "players#show"
  get 'players/update/:id' => "players#update"
end