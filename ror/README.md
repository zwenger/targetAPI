 docker-compose exec web rake db:create

docker-compose exec web bundle exec rails g devise_token_auth:install



##cambiar owner del contenedor de docker 
docker-compose exec database chown -R postgres:postgres .