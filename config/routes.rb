Junemovie::Application.routes.draw do

  devise_for :users, :controllers => { :sessions => "sessions" }

  root :to => "welcome#index"
  get 'welcome/index' => "welcome#index"
  resources :notices

  resources :movies do
    resources :comments
  end

  namespace :admin do
    root to: "movies#index"
    resources :movies
    resources :notices
    resources :categories
    resources :characters
    resources :movies do
      resources :posts
    end
  end
end
