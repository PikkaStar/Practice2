Rails.application.routes.draw do


  get root to: 'homes#top'
  get 'homes/about'=>'homes#about',as: 'about'
  devise_for :users
    resources :books
    resources :users,only: [:index,:show,:edit,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
