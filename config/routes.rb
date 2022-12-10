Rails.application.routes.draw do
  post "enable_analytics", to: "analytics#enable", as: :enable_analytics
  get 'pages/contact'
  get 'pages/home'
  get 'pages/search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
