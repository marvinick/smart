Rails.application.routes.draw do
  
  root 'pages#home'

  resources :timetables, only: [:new, :create]
  resources :budgets
  
end
