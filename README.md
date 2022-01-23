## Envi Python App
<p align="center">
	<img src="https://github.com/extsand/envi_python_app/blob/main/static/envi_transmitting-min.png?raw=true" width="auto" height="auto">
</p>
Example of env and data transmitting.

### How to use:
1. Put application environment to set_env.sh
2. Execute set_env
3. Build docker image
4. Run docker container
5. Also you can use Automate_deploy.sh 

### Script description
- set_env.sh - set demonstration varibles
- set_env_aws_ssm.sh - set varibles from AWS Parameter Store
- deploy.sh - build and run docker container
- automate_deploy.sh - auto set env and deploy


### Tech Stack
- Python Flask
- Docker
- Bash
- AWS Systems Manager
- AWS Parameter Store

