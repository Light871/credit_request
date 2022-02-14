Rails.application.routes.draw do
  root 'loan_requests#new'
  
  resources :loan_requests, only: %i[show new create]
end
