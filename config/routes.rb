Rails.application.routes.draw do
  devise_for :users

  resources :grades
  resources :students
  resources :teachers
  resources :groups

  root to: 'home#index'
end
