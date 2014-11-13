Rails.application.routes.draw do

  root "statuses#index"
  resources :statuses
end
