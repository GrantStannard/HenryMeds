# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/provider/schedule', to: 'provider#schedule'
  get '/client/:provider_id/schedule', to: 'provider#get_schedule'
  post '/client/reserve', to: 'client#reserve'
  post 'client/confirm', to: 'client#confirm'
end
