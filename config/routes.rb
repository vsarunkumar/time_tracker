Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  devise_for :users

  resources :projects do
    collection do
      get 'excel_sheet'
    end
  end

  resources :tasks do
    collection do
      get 'get_project_wise'
    end
  end
end
