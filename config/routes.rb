# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'races#index'

  resources :races
end
