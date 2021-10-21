Rails.application.routes.draw do
  post "/login", to: "users#login"
  get "public_ideas", to: "ideas#public_ideas"
  resources :ideas
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
