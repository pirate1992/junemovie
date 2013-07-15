Junemovie::Application.routes.draw do
  devise_for :users

  root :to => "welcome#index"
  get 'welcome/index' => "welcome#index"
  resources :notices

  resources :movies do
    resources :comments
    resources :posts
  end

  namespace :admin do
    root to: "movies#index"
    resources :movies
    resources :notices
    resources :movies do
      resources :posts
    end
  end
end
