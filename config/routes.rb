Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root 'devise/sessions#new'
  end
  get "/home", to: "application#home"
  get "tests/test1", to: "tests#test1"
  get "tests/review", to: "tests#review"
  resources :test_questions
  resources :tests




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
