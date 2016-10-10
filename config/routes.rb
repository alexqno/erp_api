require 'api_constraints'

Rails.application.routes.draw do

  # Api definition
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do

      scope module: :users do
        devise_for :users, controllers: {
            registrations: 'api/v1/users'
        }
      end

      resources :users, :only => [:index, :show, :update, :destroy]

    end
  end
end
