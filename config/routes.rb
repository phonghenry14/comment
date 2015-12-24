Rails.application.routes.draw do
  root "statuses#index"

  devise_for :users
  devise_scope :user do
    get "sign_out", to: "devise/sessions#destroy"
    get "sign_in", to: "devise/sessions#new"
    get "sign_up", to: "devise/registrations#new"
  end

  resources :statuses
  resources :status_comments
end
