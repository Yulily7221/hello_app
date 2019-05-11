Rails.application.routes.draw do



  get 'users/:id.edit' => 'users#edit'
  get 'users/index' => 'users#index'

#  get 'pages/top'
  get "/" => "pages#top"
  get 'help' => "pages#help"
  get "about" => "pages#about"
  get "signup" => "users#signup"
  post "create" => "users#create"
  #get "users/index" => "users#index"
  get 'users/index', to: 'users#index', as: 'index'
  get "users/:id" => "users#show"

  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post "posts/create" => "posts#create"
  get 'posts/:id' => 'posts#show'
  get 'posts/:id/edit' => 'posts#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
