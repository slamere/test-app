# 
# set :stages, %w(blackbox marcy)
# set :default_stage, 'blackbox'
# 
# require 'capistrano/ext/multistage'

# NOTE: the above for multistage capistrano WON'T WORK, it seems to be a bug
# for rails 3 and moonshine/capistrano-ext

# to deploy to a separate server (e.g blackbox, switch the line below)

server 'marcy', :app, :web, :db, :primary => true
