require '_initialize.rb'


def opinion_add_sql_server(builder)
  # These are not currently fluent
  builder.run_command('dotnet add package Microsoft.EntityFrameworkCore.SqlServer')
  builder.run_command('dotnet add package Microsoft.EntityFrameworkCore.Design')
  builder.run_command('dotnet add package Microsoft.EntityFrameworkCore.Tools')
end

def opinion_add_pgsql(builder)
  builder.run_command('dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL')
  builder.run_command('dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL.Design')
end

def opinion_initialize_secret(builder)
  builder.run_command('dotnet user-secrets init')

  # examples
  # set a secret
  # dotnet user-secrets set "Db:Password" "12345"
  # dotnet user-secrets --help
end

    # Add support for MS Sql and Postgres via EF4
    # run_command 'dotnet add package StyleCop.Analyzers'
    # run_command 'dotnet add package Microsoft.CodeAnalysis.FxCopAnalyzers'

builder = KBuilder::BaseBuilder
  .init
# opinion_add_sql_server(builder)
# opinion_add_sql_server(builder)
# opinion_initialize_secret(builder)
    # .run_command 'dotnet add package StyleCop.Analyzers'



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