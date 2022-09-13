Rails.application.routes.draw do
   root to:"homes#top",as:'top'
  devise_for :users

  get '/homes/about'=>'homes#about',as:'about'

  resources :books,only:[:new,:index,:show]
  resources:users,only:[:edit,:show,:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end