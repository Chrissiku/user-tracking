# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root 'searches#index'
  get "pages/home"
  post "contacts", to: "pages#contact", as: :contact
  get "search", to: "pages#search", as: :search
  post "enable_analytics", to: "analytics#enable", as: :enable_analytics
  delete "clear_history", to: "analytics#clear_history", as: :clear_history
end
