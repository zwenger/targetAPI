 docker-compose exec web rake db:create

docker-compose exec bundle exec rails g devise_token_auth:install