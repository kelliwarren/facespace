Facespace::Application.configure do

  config.cache_classes = false
  config.eager_load = false
  config.action_mailer.default_url_options = { host: 'http://radiant-dawn-9141.herokuapp.com' }
  config.action_mailer.delivery_method = :letter_opener
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.action_controller.asset_host = "http://localhost:3000"
  config.action_mailer.asset_host = "http://localhost:3000"
end
