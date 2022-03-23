Rails.application.routes.draw do
  devise_for :users #, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :programs do
    member { post 'toggle_favorite', to: 'programs#toggle_favorite' }
    resources :applications, except: :index
  end

  get 'about', to: 'pages#about', as: 'about'
  get 'help', to: 'pages#help', as: 'help'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'business_dashboard',
      to: 'pages#business_dashboard',
      as: 'business_dashboard'
  get 'user_dashboard', to: 'pages#user_dashboard', as: 'user_dashboard'
  get 'team', to: 'pages#team', as: 'team'
  get 'blog', to: 'pages#blog', as: 'blog'
  get 'career', to: 'pages#career', as: 'career_options'
  get 'businesses', to: 'pages#businesses', as: 'businesses'
end
