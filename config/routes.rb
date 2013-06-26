Tasks::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users
  end

end

ActionDispatch::Routing::Translator.translate_from_file(
    "config/locales/routes.yml", {
    keep_untranslated_routes: true,
    :no_prefixes => true })
