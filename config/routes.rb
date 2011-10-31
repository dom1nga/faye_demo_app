DemoApp::Application.routes.draw do
  resources :tickets
  resources :cards
  root :to => "cards#index"
end
