Rails.application.routes.draw do
  resources :questions, only: %i[index new create edit update destroy]

  root "pages#index"
end
