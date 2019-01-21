Rails.application.routes.draw do
  root to: "home#welcome"

  devise_for :companies, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :workers

  unauthenticated :user do
    root to: "home#welcome"
  end

  get 'home/welcome'
  get 'home/dashboard'
end
