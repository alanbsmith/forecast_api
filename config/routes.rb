Rails.application.routes.draw do
  
  resources :forecasts, only: [:show]
end
