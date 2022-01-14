Rails.application.routes.draw do
  get 'home', to: 'admin#index' 
  get 'login', to: 'admin#login'
  post 'login', to: 'admin#create'
  get 'logout', to: 'admin#logout'
  resources :student_profiles
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
