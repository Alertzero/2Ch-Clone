Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "home#index"

  
end
