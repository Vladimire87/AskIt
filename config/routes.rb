Rails.application.routes.draw do
  resources :questions, only: %i[index new edit create update]

  root "pages#index"
end
