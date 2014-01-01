Poll::Application.routes.draw do
  resources :responses do
    collection do
      get '/for/:constituency', to: 'responses#index', as: :constituency
      post '/new', to: 'responses#new'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :responses
      resources :constituencies
    end
  end

  root to: 'responses#new'
end
