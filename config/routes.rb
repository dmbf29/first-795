Rails.application.routes.draw do
  # http_verb '/path', to: 'controller#action', as: :prefix/nickname
  # get -> retrieving information
  # post -> creating something / aka inserting into our DB
  # get '/', to: 'pages#home' (same as root to:)
  root to: 'pages#home'
  get '/about', to: 'pages#about', as: :about
  get '/contact', to: 'pages#contact', as: :contact
end
