Rails.application.routes.draw do
   root to:"homes#top"
  devise_for :users,controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  get '/home/about'=>'homes#about',as:'about'
  patch 'books/:id'=>'books#update', as: 'update_book'
  
  resources :books,only:[:new,:index,:show,:create,:destroy,:edit,]
  resources :users,only:[:edit,:show,:index,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
