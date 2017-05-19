Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get('/', {:controller => "test", :action => "test"})
  # need to rename root directory controller, etc.
  get('/projects', {controller: "projects", action: "index"})
  get('/projects/:id', {controller: "projects", action:"show"})

  resources :projects, only: [:show]
  get('/news', {controller: "news", action: "index"})

  get('/team', {controller: "team", action: "index"})
  get('/team/:id', {controller: "team", action: "show"})

  get('/contact', {controller: "contact", action: "index"})

  get('/tags', {controller: "tags", action: "index" })
  get('/tags/:id', {controller: "tags", action: "show"})

end
