Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#index'

  resources :students
  resources :instructors
  resources :cohorts do
    resources :cohorts_student, only: [:new, :create]
    resources :cohorts_instructors, only: [:new, :create]
  end
  resources :courses
  resources :cohorts_instructors
  resources :cohorts_students

end
