Rails.application.routes.draw do

  resources :languages
  resources :courses
  resources :educations
  resources :employs
  resources :skills
  root 'welcome#index'

  devise_for :users, controllers: { 
    users: "users",
    registrations: "users"
    }

  resources :users

end
