Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/home',    to: 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/admin',   to: 'static_pages#admin'
  get  '/student',   to: 'static_pages#student'

  resources :subjects

  get  '/index',   to: 'subjects#index'
  get  '/new',   to: 'subjects#new'
  get  '/list',   to: 'subjects#list'
end