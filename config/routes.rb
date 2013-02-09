Poll::Application.routes.draw do
  resources :responses do
    collection do
      get '/for/:constituency', to: 'responses#index', as: :constituency
    end
  end

  root to: 'responses#new'
end
