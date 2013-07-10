Junemovie::Application.routes.draw do
  devise_for :users

  root :to => "welcome#index"
  get 'welcome/index' => "welcome#index"

  resources :titles
  
  resources :movies do
    resources :posts, :comments
  end

  namespace :admin do
    root to: "movies#index"
    resources :movies
    resources :titles
  end
end
