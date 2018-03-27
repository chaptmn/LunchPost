Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'lunch_posts#index'
  resources :lunch_posts , path: "posts", as: "posts", except: [:index]
end
