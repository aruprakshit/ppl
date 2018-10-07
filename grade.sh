#! /usr/bin/env zsh

chmod -R 775 db/schema.rb
bundle
bundle exec rake db:drop && bundle exec rake db:create && bundle exec rake db:migrate

ruby ./grade.rb
