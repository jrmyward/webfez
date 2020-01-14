# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Static pages
  get '/about', to: 'pages#about'
  scope 'about' do
    get 'shriners-international', to: 'pages#shriners_international'
  end
  get '/charity', to: 'pages#charity'
  get '/contact', to: 'pages#contact'
  get '/events', to: 'pages#events'
  get '/facility-rental', to: 'pages#facility_rental'
  get '/membership', to: 'pages#membership'
  get '/news-updates', to: 'pages#news'
  get '/oasis', to: 'pages#oasis'
  scope 'oasis' do
    get '2019', to: 'pages#oasis_2019', as: 'oasis_2019'
    get '2018', to: 'pages#oasis_2018', as: 'oasis_2018'
  end
  get '/privacy', to: 'pages#privacy'

  root to: 'pages#home'
end
