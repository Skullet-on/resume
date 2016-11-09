Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, controllers: { 
    users: "users",
    registrations: "users"
    }

  resources :users

end
