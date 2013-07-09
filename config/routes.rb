Junemovie::Application.routes.draw do
  resources :titles


  devise_for :users

  root :to => "welcome#index"
  get 'welcome/index' => "welcome#index"

  resources :news
  
  resources :movies do
    resources :posts, :comments
  end

  namespace :admin do
    root to: "movies#index"

    resources :movies
    resources :titles
  end
end
