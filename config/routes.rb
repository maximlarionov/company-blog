Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :companies, only: %w(index new create)

  # constraints Subdomain do
  # root to: "companies/posts#index", as: :company_blog
  # end

  root to: "companies#index"
end
