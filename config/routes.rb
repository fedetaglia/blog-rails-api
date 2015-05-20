BlogRailsApi::Application.routes.draw do

  devise_for :users

  mount API::Base => '/'
  mount GrapeSwaggerRails::Engine => '/apidoc'

end
