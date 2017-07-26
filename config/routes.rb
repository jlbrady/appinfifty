Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/#/shopifySignUp'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
