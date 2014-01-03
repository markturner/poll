Poll::Application.routes.draw do

  resources 'responses', to: 'home#index'
  match 'constituencies', to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :responses
      resources :constituencies
    end
  end

  root to: 'home#index'
end
