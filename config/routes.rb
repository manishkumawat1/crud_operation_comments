Rails.application.routes.draw do
  root "bloges#index"

  resources :bloges do
    resources :comments
  end
end

