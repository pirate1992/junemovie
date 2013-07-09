Junemovie::Application.routes.draw do

  devise_for :users

  root :to => "welcome#index"
  get 'welcome/index' => "welcome#index"

  resources :movies do
    resources :comments
  end

  namespace :admin do
    root to: "movies#index"
    resources :titles
    resources :movies do
      resources :posts
    end
  end
end
