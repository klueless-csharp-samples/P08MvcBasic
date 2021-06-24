# Goal (Build out all the files for P06, and then do P02)
require 'config/_'

run = 40

def builder
  @builder ||= KBuilder::BaseBuilder.init
end

def opts
  OpenStruct.new(
    support_mssql: true,
    support_pgsql: true,
    app: app,
    entities: entities
  )
end

# puts JSON.pretty_generate(cfg.to_h)
puts JSON.pretty_generate(opts.to_h)

opinion_cop                                 if run == 1

if run == 10 
  opinion_add_sql_server                    if opts.support_mssql
  opinion_add_pgsql                         if opts.support_pgsql
end

opinion_initialize_secret                   if run == 15

# Documentation files
structure_docs                              if run == 30

# Entity framework context files
structure_context                           if run == 40
structure_models                            if run == 41

# builder
#   .add_file('Context/DbMsContext.cs'    , template_file: 'Context/DbMsContext.cs')



  # .add_file('main.rb', template_file: 'class.rb', name: 'main')
  # .add_file('person.rb',
  #   template_file: 'model.rb',
  #   name: 'person',
  #   fields: %i[first_name last_name])
  # .add_file('address.rb',
  #   template_file: 'model.rb',
  #   name: 'address',
  #   fields: %i[street1 street2 post_code state])
  # .add_file('css/index.css',
  #   template: '{{#each colors}} .{{.}} { color: {{.}} }  {{/each}}',
  #   colors: %w[red blue green],
  #   pretty: true)

#     # /Users/davidcruwys/dev/xxx-watch
#     # /Users/davidcruwys/dev/xxx-watch/basic.rb


# file = builder.target_file('main.rb')
# puts file
# puts File.exist?(file)
# system("code #{file}")
# puts 'basic'

puts 'DONE!'