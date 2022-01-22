#!/bin/bash
echo 'Automate deploy for Envi.Transmitting'

bash ./set_env.sh
docker build --build-arg app_username=$APP_USERNAME \
 						 --build-arg app_db=$APP_DB \
						 --build-arg app_password=$APP_PASSWORD \
  						-t env_transmitting:0.1 ./.
echo '================================================='
echo '===========Running Application==================='
echo '================================================='

docker run -it -p 8081:5000 env_transmitting:0.1
