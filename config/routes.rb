Rails.application.routes.draw do
  
  root 'pages#home'

  resources :timetables
  resources :budgets
  
end
