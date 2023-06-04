Rails.application.routes.draw do
  devise_for :users
  resources :clinics
  resources :doctors
  resources :patient_cards
  resources :departments
  resources :patients
  resources :specialties
  root to: "root#index"
  default_url_options :host => "example.com"
end
