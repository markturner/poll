Poll::Application.routes.draw do
  resources :responses

  root to: 'responses#new'
end
