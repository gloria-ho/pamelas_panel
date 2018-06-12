Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#index'

  resources :students
  resources :instructors
  resources :cohorts do
    resources :cohorts_student, only: [:new, :create]
  end
  resources :courses

end
