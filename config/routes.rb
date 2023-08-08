Rails.application.routes.draw do
  get 'qustions/index'
  root "pages#index"
end
