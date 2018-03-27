Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'lunch_posts#index'
  get 'posts' => 'application#back_redirect'  
  get 'users' => 'application#back_redirect'  
  resources :lunch_posts , path: "posts", as: "posts", except: [:index]
end
