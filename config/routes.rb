Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Activating this makes it so we can access url/welcome/index.
  # Uncommenting it does not affect the root command, we can still
  # use wlecome#index as root without getting welcome/index
  #
  # Technically it tells rails to map requests to url/welcome/index
  # to the welcome#index controller.
  # get 'welcome/index'
  #
  # We can also map other requests to this controller, if we want to.
  # It even supports unicode.
  get 'välkommen', to: 'welcome#index'

  # Uncommenting this makes it so we can access welcome#index from root url
  root 'welcome#index'
end
