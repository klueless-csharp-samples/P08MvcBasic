KBuilder.reset

Handlebars::Helpers.configure do |config|
  config_file = File.join(Gem.loaded_specs['handlebars-helpers'].full_gem_path, '.handlebars_helpers.json')
  config.helper_config_file = config_file
end

target_root     = '~/dev/c#/P08MvcBasic/'

templates_csharp  = '~/dev/kgems/k_dsl/_/.template/csharp'

KBuilder.configure do |config|
  config.target_folders.add(:app      , target_root)

  # config.template_folders.add(:global , templates_global)
  config.template_folders.add(:csharp , templates_csharp)
  # config.template_folders.add(:app    , File.join(template_root , '.app_template'))
end

