Rails.application.routes.draw do
  
  resources :timetables
  resources :budgets
  root "budgets#index"
end
