Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :programs do
    resources :applications, except: :index
  end

  resources :users, only: [:show] do
  end
  
get 'about', to: 'pages#about', as: 'about'
get "help", to: "pages#help", as: 'help'
get 'contact', to: 'pages#contact', as: 'contact'
get 'business_dashboard', to: 'pages#business_dashboard', as: 'business_dashboard'
get 'user_dashboard', to: 'pages#user_dashboard', as: 'user_dashboard'
get 'team', to: 'pages#team', as: 'team'
get 'blog', to: 'pages#blog', as: 'blog'
get 'career', to: 'pages#career', as: 'career_options'
end
