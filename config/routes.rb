Poll::Application.routes.draw do

  resources 'responses', to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :responses
      resources :constituencies
      resources :parties
    end
  end

  root to: 'home#index'
end
