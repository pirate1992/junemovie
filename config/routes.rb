Junemovie::Application.routes.draw do
  devise_for :users

  root :to => "welcome#index"
  get 'welcome/index', to: "welcome#index"

  resources :news

  resources :movies do
    resources :posts, :comments
  end

  
  namespace :admin do
    root to: "movies#index"
    resources :news
    resources :movies
  end

end